
create database mini_store ;
use mini_store ;
create table medicine (
medicine_id INT NOT NULL PRIMARY KEY  ,
medicine_name varchar(60) NULL ,
medicine_Type varchar(60) NULL ,
medicine_Price int NULL ,
medicine_number int null 
);
select *from medicine ;
create table pharmacy (
pharmacy_id int not null primary key ,
pharmacy_Name varchar(60) null ,
pharmacy_Phone int null ,
pharmacy_Address varchar(60) null ,
medicine_id int not null
);
select *from pharmacy ;
create table employee (
employee_id INT NOT NULL PRIMARY KEY ,
employee_name varchar(60) null , 
employee_address  varchar(60) null  ,
medicine_id int not null ,
pharmacy_id int not null ,
foreign key  (medicine_id) References medicine (medicine_id) ,
foreign key  (pharmacy_id ) References pharmacy (pharmacy_id ) 
);
select * from employee ;
 
insert into medicine(medicine_id, medicine_name, medicine_type, medicine_Price, medicine_number)
values(217,'flurest','Anticatarrhal',9,7 );
insert into medicine(medicine_id, medicine_name, medicine_type, medicine_Price, medicine_number)
values(218,'pandol','Antipyretic',24,10 );
insert into medicine(medicine_id, medicine_name, medicine_type, medicine_Price, medicine_number)
values(219,'flomax','Antibiotic',33,15);
insert into medicine(medicine_id, medicine_name, medicine_type, medicine_Price, medicine_number)
values(220,'Abemol','Antipyretic',12,18 );
insert into medicine(medicine_id, medicine_name, medicine_type, medicine_Price, medicine_number)
values(221,'Adoler','Painkiller',8,19 );
select *from medicine;

insert into pharmacy(pharmacy_id, pharmacy_Name, pharmacy_phone, pharmacy_Address, medicine_id)
values(4974,'Alshifa',01015894761,'cairo',217 );
insert into pharmacy(pharmacy_id, pharmacy_Name, pharmacy_phone, pharmacy_Address, medicine_id)
values(4975,'Alamrousy',01114764187,'dome gardens',218 );
insert into pharmacy(pharmacy_id, pharmacy_Name, pharmacy_phone, pharmacy_Address, medicine_id)
values(4976,'Ali and ali',01516181710,'harem',219 );
insert into pharmacy(pharmacy_id, pharmacy_Name, pharmacy_phone, pharmacy_Address, medicine_id)
values(4977,'alsawey',01247874871,'ramses',220 );
insert into pharmacy(pharmacy_id, pharmacy_Name, pharmacy_phone, pharmacy_Address, medicine_id)
values(4978,'Alaa elddin',01000140015,'nasr city',221 );
SELECT *FROM pharmacy ;

insert into employee(employee_id, employee_name, employee_address, medicine_id, pharmacy_id) 
values(64151,'abdallah ahmed','ramses',217,4974);
insert into employee(employee_id, employee_name, employee_address, medicine_id, pharmacy_id) 
values(64152,'samier ahmed','ramses',218,4975);
insert into employee(employee_id, employee_name, employee_address, medicine_id, pharmacy_id) 
values(64153,'Abed mosad','nasr city',219,4976);
insert into employee(employee_id, employee_name, employee_address, medicine_id, pharmacy_id) 
values(64154,'Adel mohamed','nasr city',220,4977);
insert into employee(employee_id, employee_name, employee_address, medicine_id, pharmacy_id) 
values(64155,'mohamed mousa','ramses',221,4978);
select *from employee;

 select * from medicine where medicine_id  in ( select distinct pharmacy_id from pharmacy);
 select * from medicine where medicine_id not in (select distinct employee_id from employee) ;
 select * from pharmacy where pharmacy_id not in (select distinct employee_id from employee) ;

 select COUNT(pharmacy_id) as Count_pharmacy  from pharmacy group by pharmacy_id ;
select COUNT(medicine_id) as Count_medicine  from medicine group by medicine_id ;

update pharmacy
set pharmacy_Name = 'gamal hegazy' 
where pharmacy_id = 4976 ;
update pharmacy
set pharmacy_Name = 'rahmaa moustafa' 
where pharmacy_id = 4978 ;
update pharmacy
set pharmacy_Name = 'elsead mostafa' 
where pharmacy_id = 4977 ;
update pharmacy
set pharmacy_Name = 'ali kamal' 
where pharmacy_id = 4974;
update pharmacy
set pharmacy_Name = 'mohamed gad' 
where pharmacy_id = 4975;

delete from employee
where employee_id = 64151 ;
delete from employee
where employee_id = 64153 ;
delete from employee
where employee_id = 64152 ;
delete from medicine
where medicine_id = 218 ;
delete from medicine
where medicine_id = 217 ;
delete from medicine
where medicine_id = 219 ;