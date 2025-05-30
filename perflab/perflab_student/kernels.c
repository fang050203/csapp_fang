/********************************************************
 * Kernels to be optimized for the CS:APP Performance Lab
 ********************************************************/

#include <stdio.h>
#include <stdlib.h>
#include "defs.h"
#define BLOCK 32 
/*
 * Please fill in the following student struct
 */
student_t student = {
    "房效民", /* 姓名 */

    "2023313409" /* 学号 */
};

/*
 * Declaration of Convolutional Kernel
 */
int kernel_array[3][3] = {
    {1, 1, 1},
    {1, 1, 1},
    {1, 1, 1}};

/***************
 * ROTATE KERNEL
 ***************/

/******************************************************
 * Your different versions of the rotate kernel go here
 ******************************************************/

/*
 * naive_rotate - The naive baseline version of rotate
 */
char naive_rotate_descr[] = "naive_rotate: Naive baseline implementation";
void naive_rotate(int dim, pixel *src, pixel *dst)
{
    int i, j;

    for (i = 0; i < dim; i++)
        for (j = 0; j < dim; j++)
            dst[RIDX(j, dim - 1 - i, dim)] = src[RIDX(i, j, dim)];
}

/*
 * rotate - Your current working version of rotate
 * IMPORTANT: This is the version you will be graded on
 */
char rotate_descr[] = "rotate: Current working version";
void rotate(int dim, pixel *src, pixel *dst)
{
    //naive_rotate(dim, src, dst);
    // TODO 实现优化后的rotate方法
    int i,j;    //定义，两个循环变量
    for (i = 0; i < dim; i += BLOCK) {   //每次取BLOCK*BLOCK个大小的矩阵进行计算
        for (j = 0; j < dim; j += BLOCK) {
            // 处理每个块
            int jj;   //先索引列，因为写入时可以做到按行访问，避免较大程度的跳跃降低性能
            for (jj = j; jj < j + BLOCK && jj < dim; jj++) {
                int a= jj*dim;   //代码移动，减少计算次数
                pixel *src_row = src + jj;   //采用指针地址索引，避免复杂的地址计算
                pixel *dst_col = dst + a;
                int ii;   //4x1循环展开，较大程度提高程序性能
                for (ii = i; ii < i + BLOCK-3 && ii < dim; ii+=4) {
                    dst_col[dim-1-ii] = src_row[ii*dim];
                    dst_col[dim-2-ii] = src_row[(ii+1)*dim];
                    dst_col[dim-3-ii] = src_row[(ii+2)*dim];
                    dst_col[dim-4-ii] = src_row[(ii+3)*dim];
                }
                for(;ii<i+BLOCK;ii++)   //末尾处理
                {
                    dst_col[dim-1-ii] = src_row[ii*dim];
                }
            }
        }
    }
}

/*********************************************************************
 * register_rotate_functions - Register all of your different versions
 *     of the rotate kernel with the driver by calling the
 *     add_rotate_function() for each test function. When you run the
 *     driver program, it will test and report the performance of each
 *     registered test function.
 *********************************************************************/

void register_rotate_functions()
{
    add_rotate_function(&naive_rotate, naive_rotate_descr);
    add_rotate_function(&rotate, rotate_descr);
    /* ... Register additional test functions here */
}

/***************
 * SMOOTH KERNEL
 **************/

/***************************************************************
 * Various typedefs and helper functions for the smooth function
 * You may modify these any way you like.
 **************************************************************/

/* A struct used to compute averaged pixel value */
typedef struct
{
    int red;
    int green;
    int blue;
    int num;
} pixel_sum;

/* Compute min and max of two integers, respectively */
static int min(int a, int b) { return (a < b ? a : b); }
static int max(int a, int b) { return (a > b ? a : b); }

/*
 * initialize_pixel_sum - Initializes all fields of sum to 0
 */
static void initialize_pixel_sum(pixel_sum *sum)
{
    sum->red = sum->green = sum->blue = 0;
    sum->num = 0;
    return;
}

/*
 * accumulate_sum - Accumulates field values of p in corresponding
 * fields of sum
 */
static void accumulate_sum(pixel_sum *sum, pixel p)
{
    sum->red += (int)p.red;
    sum->green += (int)p.green;
    sum->blue += (int)p.blue;
    sum->num++;
    return;
}

/*
 * assign_sum_to_pixel - Computes averaged pixel value in current_pixel
 */
static void assign_sum_to_pixel(pixel *current_pixel, pixel_sum sum)
{
    current_pixel->red = (unsigned short)(sum.red / sum.num);
    current_pixel->green = (unsigned short)(sum.green / sum.num);
    current_pixel->blue = (unsigned short)(sum.blue / sum.num);
    return;
}

/*
 * avg - Returns averaged pixel value at (i,j)
 */
static pixel avg(int dim, int i, int j, pixel *src)
{
    int ii, jj;
    pixel_sum sum;
    pixel current_pixel;

    initialize_pixel_sum(&sum);
    for (ii = max(i - 1, 0); ii <= min(i + 1, dim - 1); ii++)
    {
        for (jj = max(j - 1, 0); jj <= min(j + 1, dim - 1); jj++)
        {
            if (kernel_array[ii - i + 1][jj - j + 1] == 1)
            {
                accumulate_sum(&sum, src[RIDX(ii, jj, dim)]);
            }
        }
    }

    assign_sum_to_pixel(&current_pixel, sum);
    return current_pixel;
}

/******************************************************
 * Your different versions of the smooth kernel go here
 ******************************************************/

/*
 * naive_smooth - The naive baseline version of smooth
 */
char naive_smooth_descr[] = "naive_smooth: Naive baseline implementation";
void naive_smooth(int dim, pixel *src, pixel *dst)
{
    int i, j;

    for (i = 0; i < dim; i++)
        for (j = 0; j < dim; j++)
            // 调用 avg 函数计算当前像素 (i, j) 的平滑值
            // 并将结果存储到目标图像中对应位置
            dst[RIDX(i, j, dim)] = avg(dim, i, j, src);

}
    

/*
 * smooth - Your current working version of smooth.
 * IMPORTANT: This is the version you will be graded on
 */
char smooth_descr[] = "smooth: Current working version";
static const unsigned int div_inv_table[6] = {
    0,                   // 无效占位
    0xFFFFFFFF,          // 1/1 的逆元 (实际不需要)
    0x80000000,          // 1/2: (1 << 31)
    0x55555555,          // 1/3: (1 << 32) / 3 ≈ 0x55555555
    0x40000000,          // 1/4: (1 << 30)
    0x33333333           // 1/5: (1 << 32) / 5 ≈ 0x33333333
};
static const int offsets[5][2] = {{-1, -1}, {-1, 0}, {-1, 1}, {0, 0}, {1, 0}};
void smooth(int dim, pixel *src, pixel *dst)
{
    //naive_smooth(dim, src, dst);
    // TODO 实现优化后的smooth方法
    int i, j;
    pixel current_pixel;
    for (i = 1; i < dim-1; i++){    //先处理除边框司四角之外的中间部分
        int t=dim*i;    //代码移动，避免重复计算
        int a=(i-1)*dim;
        int b=(i+1)*dim;
        for (j = 1; j < dim-1; j++){
            pixel_sum sum;
            initialize_pixel_sum(&sum);    //去除条件判断，直接计算求和获取结果
            current_pixel.red = (unsigned short)(((int)src[a+j-1].red+(int)src[a+j].red+(int)src[a+j+1].red+(int)src[t+j].red+(int)src[b+j].red)/5);
            current_pixel.green = (unsigned short)(((int)src[a+j-1].green+(int)src[a+j].green+(int)src[a+j+1].green+(int)src[t+j].green+(int)src[b+j].green) / 5);
            current_pixel.blue = (unsigned short)(((int)src[a+j-1].blue+(int)src[a+j].blue+(int)src[a+j+1].blue+(int)src[t+j].blue+(int)src[b+j].blue) /5);
            dst[t+j] = current_pixel;
        }
    }
    for(j = 1; j < dim-1; j++)     //处理上下两边，除去四角
    {
        int a=dim+j;
        int b=(dim-2)*dim;
        int c=(dim-1)*dim;
        int d=j-1;
        int e=j+1;
        current_pixel.red = (unsigned short)(((int)src[j].red+(int)src[a].red)/2);
        current_pixel.green = (unsigned short)(((int)src[j].green+(int)src[a].green)/2);
        current_pixel.blue = (unsigned short)(((int)src[j].blue+(int)src[a].blue)/2);
        dst[j] = current_pixel;
        current_pixel.red = (unsigned short)(((int)src[b+d].red+(int)src[b+j].red+(int)src[b+e].red+(int)src[c+j].red)/4);
        current_pixel.green = (unsigned short)(((int)src[b+d].green+(int)src[b+j].green+(int)src[b+e].green+(int)src[c+j].green)/4);
        current_pixel.blue = (unsigned short)(((int)src[b+d].blue+(int)src[b+j].blue+(int)src[b+e].blue+(int)src[c+j].blue)/4);
        dst[c+j] = current_pixel; 
    }
    for(i = 1; i < dim-1; i++)    //处理左右两边，除去四角
    {
        int a=(i-1)*dim;
        int b=i*dim;
        int c=(i+1)*dim;
        current_pixel.red = (unsigned short)(((int)src[a].red+(int)src[a+1].red+(int)src[b].red+(int)src[c].red)/4);
        current_pixel.green = (unsigned short)(((int)src[a].green+(int)src[a+1].green+(int)src[b].green+(int)src[c].green)/4);
        current_pixel.blue = (unsigned short)(((int)src[a].blue+(int)src[a+1].blue+(int)src[b].blue+(int)src[c].blue)/4);
        dst[b] = current_pixel;
        current_pixel.red = (unsigned short)(((int)src[a+dim-2].red+(int)src[a+dim-1].red+(int)src[b+dim-1].red+(int)src[c+dim-1].red)/4);
        current_pixel.green = (unsigned short)(((int)src[a+dim-2].green+(int)src[a+dim-1].green+(int)src[b+dim-1].green+(int)src[c+dim-1].green)/4);
        current_pixel.blue = (unsigned short)(((int)src[a+dim-2].blue+(int)src[a+dim-1].blue+(int)src[b+dim-1].blue+(int)src[c+dim-1].blue)/4);
        dst[b+dim-1] = current_pixel; 
    }
    //int a=dim*dim;
    int b=(dim-2)*dim;
    int c=(dim-1)*dim;    //单独处理四角
    current_pixel.red = (unsigned short)(((int)src[0].red+(int)src[dim].red)/2);
    current_pixel.green = (unsigned short)(((int)src[0].green+(int)src[dim].green)/2);
    current_pixel.blue = (unsigned short)(((int)src[0].blue+(int)src[dim].blue)/2);
    dst[0] = current_pixel;
    current_pixel.red = (unsigned short)(((int)src[dim-1].red+(int)src[dim+dim-1].red)/2);
    current_pixel.green = (unsigned short)(((int)src[dim-1].green+(int)src[dim+dim-1].green)/2);
    current_pixel.blue = (unsigned short)(((int)src[dim-1].blue+(int)src[dim+dim-1].blue)/2);
    dst[dim-1] = current_pixel;
    current_pixel.red = (unsigned short)(((int)src[b].red+(int)src[b+1].red+(int)src[c].red)/3);
    current_pixel.green = (unsigned short)(((int)src[b].green+(int)src[b+1].green+(int)src[c].green)/3);
    current_pixel.blue = (unsigned short)(((int)src[b].blue+(int)src[b+1].blue+(int)src[c].blue)/3);
    dst[c] = current_pixel;
    current_pixel.red = (unsigned short)(((int)src[b+dim-2].red+(int)src[b+dim-1].red+(int)src[c+dim-1].red)/3);
    current_pixel.green = (unsigned short)(((int)src[b+dim-2].green+(int)src[b+dim-1].green+(int)src[c+dim-1].green)/3);
    current_pixel.blue = (unsigned short)(((int)src[b+dim-2].blue+(int)src[b+dim-1].blue+(int)src[c+dim-1].blue)/3);
    dst[c+dim-1] = current_pixel;
}

/*********************************************************************
 * register_smooth_functions - Register all of your different versions
 *     of the smooth kernel with the driver by calling the
 *     add_smooth_function() for each test function.  When you run the
 *     driver program, it will test and report the performance of each
 *     registered test function.
 *********************************************************************/

void register_smooth_functions()
{
    add_smooth_function(&smooth, smooth_descr);
    add_smooth_function(&naive_smooth, naive_smooth_descr);
    /* ... Register additional test functions here */
}
