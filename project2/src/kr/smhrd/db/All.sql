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
values(slmanager_seq.nextval, 'admin','pass','�Ѱ�������' ,'�Ѱ�������','010-4019-4895','chush96@gmail.com');
insert into SLMANAGER
values(slmanager_seq.nextval, 'aadmin','Apass','A������' ,'A������','010-4019-4891','chush961@gmail.com');
insert into SLMANAGER
values(slmanager_seq.nextval, 'badmin','Bpass','B������' ,'B������','010-4019-4892','chush926@gmail.com');
insert into SLMANAGER
values(slmanager_seq.nextval, 'Cadmin','Cpass','C������' ,'C������','010-4019-4893','chush963@gmail.com');

insert into SLBOARD
values(slboard_seq.nextval, 'A1','a����','���','85','��ȭ','21/01/01');
insert into SLBOARD
values(slboard_seq.nextval, 'B1','b����','���','85','��ȭ','21/01/01');
insert into SLBOARD
values(slboard_seq.nextval, 'C1','c����','���','85','��ȭ','21/01/01');

insert into SLLAMP
values(sllamp_seq.nextval, 'A1','A����','on/off','100%','��');
insert into SLLAMP
values(sllamp_seq.nextval, 'B1','B����','on/off','100%','��');
insert into SLLAMP
values(sllamp_seq.nextval, 'C1','C����','on/off','100%','��');

insert into SLCAM
values(slcam_seq.nextval, 'Aī�޶�','A����','on/off');
insert into SLCAM
values(slcam_seq.nextval, 'Bī�޶�','B����','on/off');
insert into SLCAM
values(slcam_seq.nextval, 'Cī�޶�','C����','on/off');



select * from SLMANAGER;
select * from SLLAMP;
select * from SLCAM;
select * from SLBOARD;






