--航空公司表
create table company(
cmpId char(4) PRIMARY KEY NOT NULL,--'航空公司编号' 以1开头 4位数
cmpName varchar(40) NOT NULL ,-- '航空公司名称'
cmpPSize smallint ,-- '公司飞机数量'
cmpLSize smallint -- '公司航线数量' 
);


--航线表 
create table line(
linId char(6) PRIMARY KEY NOT NULL,--航线编号 以JK-xxx组成
linCmpId char(4) NOT NULL,--航线所属航空公司编号
linStart varchar(40) NOT NULL,--航线起点城市
linEnd varchar(40) NOT NULL,--航线终点城市
linMile int  NOT NULL,--航线的公里数
FOREIGN KEY(linCmpId) REFERENCES company(cmpId)
);

--客机表
create table plane(
plaId char(6) PRIMARY KEY NOT NULL,--客机注册编号 B-xxx
plaSize smallint NOT NULL,--客机的座位数量
plaCmpId char(4) NOT NULL,--客机所属公司的Id
FOREIGN KEY(plaCmpId) REFERENCES company(cmpId)
);



--机场表
create table airport(
aptId char(4) PRIMARY KEY NOT NULL,--机场编号 以2开头 4位数
aptName varchar(40) NOT NULL,--机场名称
aptLocation varchar(40)--机场所在城市
)

--航班表
create table fight(
fgtId char(6) PRIMARY KEY NOT NULL,--航班编号 由航线所属公司的2位字母缩写同4位数字组成 
fgtStAptId char(4) NOT NULL,--航班始发机场(售票机场)编号
fgtEdAptId char(4) ,--航班的终点机场编号(本例中并未使用到)
fgtStTime datetime NOT NULL,--航班的起飞时间
fgtEdTime datetime NOT NULL,--航班的到达时间
fgtLinId char(6) NOT NULL,--航班对应航线编号
fgtPlaId char(6) NOT NULL,--航班对应的飞机编号
FOREIGN KEY(fgtLinId) REFERENCES line(linId),
FOREIGN KEY(fgtPlaId) REFERENCES plane(plaId),
FOREIGN KEY(fgtStAptId) REFERENCES airport(aptId)
);

--机票表
create table ticket(
tckId char(16) PRIMARY KEY NOT NULL,--本期放票编号 14位日期缩写 2位随机数
tckFgtId char(6) NOT NULL,--本期放票所属的航班号
tckRemain smallint NOT NULL,--本期放票的剩余容量
tckDeadLine datetime NOT NULL,--本期放票截止日期
tckPrice int NOT NULL,--本期票价
FOREIGN KEY(tckFgtId) REFERENCES fight(fgtId)
);

--客户表
create table consumer(
csmId char(4) PRIMARY KEY NOT NULL,--用户唯一标识 以3开头 4位数
csmName varchar(40) NOT NULL,--用户姓名
csmTel varchar(11),--用户手机号 用于紧急状况下通知
csmRank char(1),--用户身份等级(0是普通用户 1是经常旅客)
csmMoney int,--用户账上金额 
csmPoints int --用户里程积分
);

--订单 
create table orderinfo(
ordId char(17) PRIMARY KEY NOT NULL,--订单号 14位日期缩写 3位随机数
ordTckId char(16) NOT NULL,-- 订单对应的放票编号
ordCsmId char(4) NOT NULL,--发起订单的用户
ordPay int NOT NULL,--实际支付金额
ordDate datetime NOT NULL,--订单日期
FOREIGN KEY(ordTckId) REFERENCES ticket(tckId),
FOREIGN KEY(ordCsmId) REFERENCES consumer(csmId)
);

-- foreign key(xx) references XX(xx)