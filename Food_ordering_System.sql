create table user(
user_id int primary key auto_increment,
user_firstName varchar(40) not null,
user_lastName varchar(40) not null,
user_email varchar(40) not null,
user_password varchar(40) not null,
user_phoneNumber varchar(40) unique not null,
user_subCity varchar(40) not null,
user_kebele varchar(40) not null,
user_woreda varchar(40) not null,
user_houseNo varchar(40) not null,
user_streetName varchar(40) not null);

create table Restaurant(
Res_id int primary key auto_increment,
Res_name varchar(50) not null,
Res_phoneNumber varchar(40) unique not null,
Res_email varchar(40) not null,
Res_password varchar(50) not null,
Res_SubCity varchar(40) not null,
Res_Kebele varchar(40) not null,
Res_woreda varchar(40) not null,
Res_StreetName varchar(40) not null);


create table Food(
Food_id int primary key auto_increment,
Food_name varchar(100) not null,
price decimal(5,3) not null,
Res_id int,
foreign key(Res_id) references Restaurant(Res_id) on update cascade on delete cascade);

create table driver(
dr_id int primary key auto_increment,
dr_firstName varchar(40) not  null,
dr_lastName varchar(40) not  null,
dr_vehicleType varchar(40) not null,
dr_licenseNumber varchar(50),
dr_plateNumber varchar(50),
dr_phoneNumber varchar(40) not null,
dr_email varchar(40) not null,
dr_password varchar(40) not null,
dr_subcity varchar(40) not null,
dr_kebele varchar(40) not null,
dr_woreda varchar(40) not null,
dr_houseNo varchar(40) not null,
dr_streetname varchar(40) not null); 

