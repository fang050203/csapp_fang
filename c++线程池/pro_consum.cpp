#include <iostream>
#include <mutex>
#include <thread>
#include <condition_variable>

std::mutex lock;
std::condition_variable cv;
bool ready = false;

int data=0;
void producer()
{
    for(int i=0;i<10;i++)
    {
        std::unique_lock<std::mutex> lk(lock);
        cv.wait(lk,[]{return !ready;});
        ready=true;
        data=i;
        std::cout<<"produce:"<<data<<std::endl;
        cv.notify_one();
    }
}

void consumer()
{
    for(int i=0;i<10;i++)
    {
        std::unique_lock<std::mutex> lk(lock);
        cv.wait(lk,[]{return ready;});
        ready=false;
        std::cout<<"consumer"<<data<<std::endl;
        cv.notify_one();
    } 
}

int main()
{
    std::thread pro(producer);
    std::thread con(consumer);
    pro.join();
    con.join();
    return 0;
}