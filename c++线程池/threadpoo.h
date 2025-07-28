#pragma once
#include <vector>
#include <thread>
#include <functional>
#include <mutex>
#include <condition_variable>
#include <queue>

template<typename T>

class BlockingQueue{

public://线程池销毁时，需要把阻塞队列变成非阻塞的，所以需要传入一个nonblock参数
    BlockingQueue(bool nonblock=false) : nonblock(nonblock){}
    void push(const T & t)
    {
        //第一步，先获得锁
        std::unique_lock(std::mutex)lk(mtx_);
        queue_.push(t); 
        not_empty_.notify_one();
    }

    //pop是由消费者线程调用
    //需要知道两种状态
    //1是否正常弹出元素
    //2弹出什么元素
    bool pop(T &t){
        //第一步，先获得锁
        std::unique_lock<std::mutex>lk(mtx_);
        not_empty_.wait(lk,[this]{return !queue_.empty() || nonblock;});
        //如果为阻塞，才要检查是否为空
        if(queue_.empty())
        {
            return false;
        }
        t=queue_.front();
        queue_.pop();
        return true;
    }

    //取消阻塞，进行退出
    //因为如果队列为空，所有pop均会被阻塞住,所以notifyall
    void cacel()
    {
        std::unique_lock<std::mutex>lk(mtx_);
        nonblock=true;
        not_empty_.notify_all();
    }

private:
    std::queue<T> queue_; //创建队列
    std::mutex mtx_;//创建互斥锁
    std::condition_variable not_empty_;  //创建条件变量
    bool nonblock;
};

class ThreadPool{
public:
    //构造函数，用来构造线程池
    explicit ThreadPool (int num_threads)//防止隐式调用，必须明确进行构造，比如：ThreadPool pool(5)，必须明确写出
    {
        for(int i=0;i<num_threads;i++)
        {
            threads_.emplace_back([this]{worker()});
        }
    }

    void Post(std::function<void()> task)
    {
        //线程池操作，向池中push数据
        tasks_.push(task);//move的意思是不拷贝直接传入，减少开销
    }
private:
//线程的入口函数，用一个while循环不断从中取任务并且执行
//放在private里，通常是为了调用private的变量，且具有一定的封装性
    void worker()
    {
        //是一个循环，不断从队列中取出任务执行
        while(true)
        {
            std::function<void()> task;
            if(!this->tasks_.pop(task))
            {
                break;
            }
            task();
        }
    }
    std::vector<std::thread>threads_;
    //创建一个线程集合，用来组织和管理线程
    BlockingQueue<std::function<void()>> tasks_;
    //创建一个阻塞队列，里面的元素是无参数无返回值的函数任务，线程池从中取出任务执行

};