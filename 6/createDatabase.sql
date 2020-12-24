--创建民航数据库
create database CVA on 
(
name=civilAviationData,
filename='D:\CVA\civilAviationData.mdf',
size=10,
maxsize=50,
filegrowth=5%
)
log on
(
name=civilAviationLog,
filename='D:\CVA\civilAviationLog.ldf',
size=2,
maxsize=5,
filegrowth=1);