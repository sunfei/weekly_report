# weekly_report
此脚本对使用者的git commit log要求较严格，需要使用者的log有统一的格式规范，文字表达清楚，每行表述一个问题等。 

使用方法：$sh weekly_report.sh **@meitu.com

环境:bash

Output sample:

########################################
# 北京影像技术研发周报

## android研发(commit title)
* [add] filter unit test
* [update] Report client_use_time is minus
* [update] build script
* [update] GDT preload with correct Setting properites
* [fixbug] SYGG-720

## 项目任务(commit message)

增加Reporter使用用例，{@see ReporterTest#testReport}   
提供Report接入方法工具类  
更新使用MsgPack的Report请求参数  
更新Report包结构  
提供Report线程关闭方法 

########################################
