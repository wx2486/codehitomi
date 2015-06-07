create database codehitomi;
create user 'hitomi'@'%' identified by 'hitomi';
grant all on codehitomi.* to 'hitomi'@'%';
