<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>参数配置</title>
</head>
<body>
#特殊告警码文件路径
specialListPath = doc/speciallist.properties
com.gs.nms.outputcode=doc/code.out
#普通告警规则文件路径
learnRulePath = doc/alarmRuleResult.csv
#特例告警规则文件路径
learnScRulePath = doc/alarmScRuleResult.csv
#盘号定义文件路径
objectidPath = doc/[PUB]BoardType-STD.xml
#告警号定义文件路径
com.gs.nms.alarmType.file=doc/[PUB]AlarmType-STD.xml
#网元类型描述的文件路径
com.gs.nms.netype= doc/[PUB]NEType-STD.xml
#同层指向性规则
sameLayerCodeRulePath=doc/sameLayerCode.perperties
#同输入间禁止规则
sameinputforbidfile=doc/input-forbid.csv
#中间告警代码表
middle.alarm.code.filepath=doc/middlecode.table
#指定路由,名称不限,直接指定文件，则文件监控将不起作用
elecTreePath = busiaccess
#公共文件夹相对路径
publicFilePath = doc
#日志目录
com.gs.nms.commen.log.dir=logs
#电路配置模式,0为文件夹(文件夹内文件格式限定)，1,为指定文件更新（格式任意）
com.gs.nms.busiaccess.updatemode=0
#告警层级阈值(OMS, 6),(OTS,5),(OCH,4),(OTUk,3),(ODUk,2),(OTN_CLINET,1)
com.gs.nms.layer.level=2
#线程池大小设置
threadPoolSize = 10
#程序自己分配线程池容量,default user,用户手动指定,如果设置为默认,则用户指定参数则不起作用
threadStrategy=user
#烽火服务IP
reciveIp = 127.0.0.1
#\u6837\u672C\u65F6\u95F4\u5355\u4F4D\u6BEB\u79D2延迟队列配置时间 单位mS
thresholdTime = 20000
#\u5224\u65AD\u662F\u5426\u6E05\u9664\u544A\u8B66\u7684\u65F6\u95F4\u95F4\u9694
clearTime = 3100
#\u8FD0\u884C\u73AF\u5883
#执行场景 datatest production default
environment = datatest
#是否开启测试模式下的数据乱序功能
#com.gs.nms.datatest.random=true
#logictest下的几种测试类型,0为普通告警测试
logictest.alarmType=0
#\u544A\u8B66\u7EDF\u8BA1\u8F93\u51FA\u5F00\u5173
statisticSwitch = on
#\u65E5\u5FD7\u6253\u5370\u95F4\u9694\u65F6\u95F4
printLogTime = 6000
#log4j配置文件位置
com.gs.nms.log4j.path=config/log4j.properties
#网管接收时间间隔 单位 ms
firstCreateTimeGap=20000
#网管时间粒度 单位ms
specialObject.particle.size=1000
#文件更新模式，1文件变动监控，2定时器监控
com.gs.nms.updatemode=2
#分，时，天，月，年删除,mm,HH,dd,MM,yyyy
com.gs.nms.delete.type=yyyy-MM-dd
#时间差额，yyyy#1为1年，dd#1为一天，其他依次类推
com.gs.nms.delete.differCount=dd#10
#操作系统类型  windows linux
osName = windows
#cpu告警阈值
cpu_threshold=80
#存储时间文件
com.gs.nms.persistent.file=temp/target.serialize
#程序处理能力nps,每秒处理数量
com.gs.nms.alarm.process.ability=5000
#告警开始时间向前偏移量,单位秒,建议覆盖延迟时间
com.gs.nms.alarm.forwardoffset.time=25
#ice\u76D1\u542C\u7684\u4E3B\u673Aip\u548C\u7AEF\u53E3
ice.simplePrinter.host.ipaddress=127.0.0.1
ice.simplePrinter.host.port=9999
#\u53D1\u9001\u544A\u8B66\u7684\u65B9\u5F0F\uFF1ANUMTYPE\uFF08\u6309\u6570\u91CF\u53D1\u9001\uFF09\uFF0CTIMETYPE\uFF08\u6309\u65F6\u95F4\u53D1\u9001\uFF09
handler.type=TIMETYPE
#开启测试,开启测试的SET
#com.gs.nms.test=true
#
#是否开启缓冲区刷新,默认不开启
#com.gs.nms.log.buffer.flush.open=true
#[测试用选项]线程统计是否开启
threadpool.statistics.switch.on=false
#[测试用选项]线程统计间隔,单位秒
#threadpool.statistics.time.internal=10
#\u544A\u8B66\u6BCF\u6B21\u53D1\u9001\u6761\u6570
alarm.send.list.size=1000
#\u544A\u8B66\u6BCF\u6B21\u53D1\u9001\u65F6\u95F4\u95F4\u9694ms
alarm.send.time.interval=100
#基于路由逻辑判断
#alarm.routerpath.logic.check.open=true
</body>
</html>