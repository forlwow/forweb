#include "ethread.h"
#include <functional>
#include <log.h>
#include <iostream>
#include <chrono>
#include <memory>
#include <string>
#include <thread>
#include <vector>
#include <unistd.h>


using namespace std;

void test1();
void test2();

int main(){
    return 0;
}



void test1(){
    auto log = CreateStdLogger("root");
    auto fun1 = std::function<void()>(
            [&](){
                SERVER_LOG_INFO(log) << "name" << server::EThread::GetName()
                << "this.name: " << server::EThread::GetThis()->getName()
                << "id: " << std::this_thread::get_id()
                << "this.id: " << server::EThread::GetThis()->getId();
            }
        );
    std::vector<server::EThread::ptr> thp;
    for (int i = 0; i < 5; ++i){
        thp.emplace_back(new server::EThread(fun1, "name_" + std::to_string(i)));
    }
    for (auto &item: thp){
        item->join();
    }
}

void test2(){
    server::Logger::ptr log(new server::Logger("root", "%s%n"));
    log->setLevel(server::LogLevel::DEBUG);
    // log->addAppender(server::LogAppender::ptr(new server::StdoutLogAppender));
    log->addAppender(server::LogAppender::ptr(new server::FileLogAppender("./log.txt")));

    auto t1 = chrono::high_resolution_clock::now();
    for(int i = 0; i < 1e5; ++i){
        SERVER_LOG_DEBUG(log) << "test";
    }
    auto t2 = chrono::high_resolution_clock::now();
    auto t3 = t2 - t1;
    cout << chrono::duration_cast<chrono::milliseconds>(t3).count() << endl;

}




