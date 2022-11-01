drop table SLMANAGER cascade constraints;
drop table SLLAMP cascade constraints;
drop table SLCAM cascade constraints;
drop table SLBOARD cascade constraints;

drop sequence slmanager_seq;
drop sequence sllamp_seq;
drop sequence slcam_seq;
drop sequence slboard_seq;


create table SLMANAGER(
SLMANAGER_N number not null,
SLMANAGER_ID varchar2(30) not null primary key,
SLMANAGER_PW varchar2(30) not null,
SLMANAGER_POSITION varchar2(20) not null,
SLMANAGER_NAME varchar2(30) not null,
SLMANAGER_TEL varchar2(30),
SLMANAGER_MAIL varchar2(30)
)

create table SLBOARD(
SLBOARD_N number not null,
SLLAMP_NAME varchar2(30) not null,
SLLAMP_LOCATION varchar2(30) not null,
SLBOARD_STATUS varchar2(30),
SLBOARD_DECIBEL varchar2(20),
SLBOARD_REC varchar2(30),
SLBOARD_DATE varchar2(30) not null
)

create table SLLAMP(
SLLAMP_N number not null primary key,
SLLAMP_NAME varchar2(30) not null,
SLLAMP_LOCATION varchar2(30) not null,
SLLAMP_STATUS varchar2(30),
SLLAMP_BATTERY varchar2(30),
SLLAMP_BROKEN varchar2(30)
)

create table SLCAM(
SLCAM_N number not null primary key,
SLCAM_NAME varchar2(30) not null,
SLCAM_LOCATION varchar2(30) not null,
SLCAM_STATUS varchar2(30)
)




create sequence slmanager_seq;
create sequence sllamp_seq;
create sequence slcam_seq;
create sequence slboard_seq;



insert into SLMANAGER
values(slmanager_seq.nextval, 'admin','pass','醚褒包府磊' ,'醚褒包府磊','010-4019-4895','chush96@gmail.com');
insert into SLMANAGER
values(slmanager_seq.nextval, 'aadmin','Apass','A包府磊' ,'A包府磊','010-4019-4891','chush961@gmail.com');
insert into SLMANAGER
values(slmanager_seq.nextval, 'badmin','Bpass','B包府磊' ,'B包府磊','010-4019-4892','chush926@gmail.com');
insert into SLMANAGER
values(slmanager_seq.nextval, 'Cadmin','Cpass','C包府磊' ,'C包府磊','010-4019-4893','chush963@gmail.com');

insert into SLBOARD
values(slboard_seq.nextval, 'A1','a备开','变鞭','85','踌拳','21/01/01');
insert into SLBOARD
values(slboard_seq.nextval, 'B1','b备开','变鞭','85','踌拳','21/01/01');
insert into SLBOARD
values(slboard_seq.nextval, 'C1','c备开','变鞭','85','踌拳','21/01/01');

insert into SLLAMP
values(sllamp_seq.nextval, 'A1','A备开','on/off','100%','公');
insert into SLLAMP
values(sllamp_seq.nextval, 'B1','B备开','on/off','100%','公');
insert into SLLAMP
values(sllamp_seq.nextval, 'C1','C备开','on/off','100%','公');

insert into SLCAM
values(slcam_seq.nextval, 'A墨皋扼','A备开','on/off');
insert into SLCAM
values(slcam_seq.nextval, 'B墨皋扼','B备开','on/off');
insert into SLCAM
values(slcam_seq.nextval, 'C墨皋扼','C备开','on/off');



select * from SLMANAGER;
select * from SLLAMP;
select * from SLCAM;
select * from SLBOARD;






