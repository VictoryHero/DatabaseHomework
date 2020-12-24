--航空公司
insert into company values('1001','CA中国国际航空公司',3,3);
insert into company values('1002','MU东方航空公司(上海)',2,2);	
insert into company values('1003','HU中国海南航空公司',2,2);

--航线
insert into line values('JK-101','1001','北京','上海',1080);
insert into line values('JK-102','1001','北京','南京',900);
insert into line values('JK-103','1001','北京','广州',1900);

insert into line values('JK-201','1002','北京','上海',1080);
insert into line values('JK-202','1002','上海','广州',800);

insert into line values('JK-301','1002','北京','上海',1080);	
insert into line values('JK-302','1002','广州','厦门',500);	

--飞机
insert into plane values('B-101',400,'1001');
insert into plane values('B-102',300,'1001');
insert into plane values('B-103',400,'1001');

insert into plane values('B-201',300,'1002');
insert into plane values('B-202',300,'1002');

insert into plane values('B-301',300,'1003');
insert into plane values('B-302',200,'1003');


--机场
insert into airport values('2001','北京首都国际机场','北京');
insert into airport values('2002','上海浦东国际机场','上海');
insert into airport values('2003','南京禄口国际机场','南京');
insert into airport values('2004','广州白云国际机场','广州');
insert into airport values('2005','厦门高崎国际机场','厦门');

insert into fight values('CA7001','2001','2002','2020-12-24 08:20:00','2020-12-24 10:40:00','JK-101','B-101');
insert into fight values('CA7002','2001','2003','2020-12-24 06:40:00','2020-12-24 08:40:00','JK-102','B-102');
insert into fight values('CA7003','2001','2004','2020-12-24 12:00:00','2020-12-24 15:20:00','JK-103','B-103');

insert into fight values('MU7001','2001','2002','2020-12-24 14:30:00','2020-12-24 16:50:00','JK-201','B-201');
insert into fight values('MU7002','2002','2004','2020-12-24 20:15:00','2020-12-24 23:05:00','JK-202','B-202');

insert into fight values('HU7001','2001','2002','2020-12-24 18:20:00','2020-12-24 20:50:00','JK-301','B-301');
insert into fight values('HU7002','2004','2005','2020-12-24 21:10:00','2020-12-24 22:30:00','JK-302','B-302');

--客户
insert into consumer values('3001','刘一','18035067832','0',1000,0);
insert into consumer values('3002','李二','13233445561','1',3000,500);	
insert into consumer values('3003','张三','18295899599','1',4000,1000);

