
Logd is an open-source distributed, reliable, high-performance and available service which is based on streaming data flows and used for collecting huge amounts of log data. 

## Features

* Written in [Go](http://golang.org)
* Easy to get running (3 or 4 commands)
* no other dependencies

## download
please download the zip file directly.

原作者 文档写的比较简陋，现补充如下：
1、 etl 引用baidu.com/etl ，没有找到，目前暂时去掉
2、服务分为 tail  collector monitor
    tail 用来抓取日志
    collector 用来收集日志 ，包含 collector ，fcollector , mgocollector ,前两个都是文件汇总日志，最后一个使用mongodb存储日志
    monitor 监控中心，用来探测服务是否活着
3、启动顺序
    3.1 启动monitor : logd monitor ./conf/monitor.ini
    3.2 启动collector : logd collector
    3.3 启动 tail: logd tail ./conf/config.ini ，此功能只能在linux使用，必须要有tail命令
    

