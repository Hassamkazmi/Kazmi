create table Bank 
(
  Bank_Id bigint primary key,
  Bank_Name varchar(50),
  Bank_Address varchar(50)
)

create table EMPLOYEE_Table1
(
Employee_Id bigint primary key,
Employee_Name nvarchar(50),
Employee_Salary bigint,
Employee_Password bigint,
Employee_Contact_Number nchar(11),
Employee_Email_ID varchar(50),
Employee_Gender varchar(25),
Employee_Age int, 
Branch_Id bigint
)
create table BRANCH_Table
(
 Branch_Id bigint primary key,
 Branch_Name nvarchar(50),
 Branch_Code bigint,
 Branch_Location nvarchar(50),
 Branch_Total_Employee bigint,
 Branch_City nvarchar (50)
 
)
create table Create_Account
(
    Account_NO BIGINT primary key, 
    Customer_Password BIGINT,
    Account_Type  VARCHAR (50) ,
    Product VARCHAR (50) ,
    Name VARCHAR (50) ,
    Customer_Address VARCHAR (50),
    Contact_Number NCHAR (11)   ,
    Email_Id  VARCHAR (50) ,
    Date_OF_Birth DATETIME     ,
    Gender VARCHAR (50) ,
    Balance  BIGINT       ,
    Account_Open_Date DATETIME     
);


select * from EMPLOYEE_Table1
select * from BRANCH_Table

select Employee_Id,Employee_Name,Branch_Name,Branch_City,Branch_Location
from EMPLOYEE_Table1 inner join BRANCH_Table on EMPLOYEE_Table1.Employee_Id=BRANCH_Table.Branch_Id   

alter table Employee_Table1 add constraint fk_Bank_Employee
foreign key (Bank_Id) references Bank(Bank_Id)
 
alter table With_Draw_Ammount add constraint fk_With_Draw
foreign key (Credit_Account_No) references Create_Account(Account_NO) 

alter table Employee_Table1 
add  Bank_Id bigint

alter table BRANCH_Table
ADD Bank_Id bigint 

alter table BRANCH_Table add constraint fk_Bank_Branch
foreign key (Bank_Id) references Bank(Bank_Id) 

alter table Loan
ADD Bank_Id bigint 


alter table Loan add constraint fk_Bank_Loan
foreign key (Bank_Id) references Bank(Bank_Id) 


alter table Create_Account
ADD Bank_Id bigint 


alter table Create_Account add constraint fk_Bank_Create_Account
foreign key (Bank_Id) references Bank(Bank_Id) 

delete from BRANCH_Table where Branch_Id=2

select * from BRANCH_Table

CREATE TABLE Manage_Account
 (
    Account_NO        BIGINT ,
    Name              VARCHAR (50) ,
          
    Customer_Password BIGINT       ,
    Account_Type      VARCHAR (50) ,
    Product           VARCHAR (50) ,
    Phone_Number      NCHAR (11)   ,
    Customer_Address  VARCHAR (50) ,
    Email_Id          VARCHAR (50) ,
   Branch_No         BIGINT primary key ,
  
)
select * from Manage_Account
CREATE TABLE Transfer_Ammount
 (
    Credit_Account_NO bigint ,
    Name VARCHAR (50) ,
    Available_Balance BIGINT       ,
    Ammount  bigint   ,
    Credit_Ammount bigint,
    Account_Type varCHAR (50)   ,
    Product  VARCHAR(50) ,
    Branch_No  BIGINT PRIMARY KEY  
)

create table With_Draw_Ammount
(
    Credit_Account_NO bigint ,
    Name VARCHAR (50) ,
    Available_Balance BIGINT       ,
    Ammount  bigint   ,
    Account_Type varCHAR (50)   ,
    Product  VARCHAR(50) ,
    Branch_No  BIGINT PRIMARY KEY  

)
create table Loan
( 
    Full_Name varchar(50),
    Address_Loan varchar (50) ,
    Account_type varchar(50),
    Ammount_of_loan bigint ,
    Cnic_No  NCHAR (13) ,
    Interest_Rate  INT,    
    Number_of_Payments BIGINT,
    Monthly_Payment bIGINT,
    Allot_No bigint primary key,
    Branch_No bigint
)
alter table Loan add constraint fk_Loan
foreign key (Branch_No) references BRANCH_Table(Branch_Id) 


alter table With_Draw_Ammount add constraint fk_With_Draw
foreign key (Credit_Account_No) references Create_Account(Account_NO) 


alter table With_Draw_Ammount
drop column Transaction_Id

alter table With_Draw_Ammount
add Transaction_Id bigint 


alter table With_Draw_Ammount
add constraint CH__With_Draw_Ammount_Ammount  
CHECK(Ammount>0 AND Ammount<1000)

select * from With_Draw_Ammount

update With_Draw_Ammount set Ammount=19 where Credit_Account_NO=10

select * from With_Draw_Ammount
  select * from Transfer_Ammount
  
insert into Transfer_Ammount values
(1,'Hassam',20000,25000,25000,'Monthly','Apna')
 
select * from EMPLOYEE_Table1
select * from BRANCH_Table

select *from Create_Account 

 
select Employee_Id,Employee_Name,Branch_Name,Branch_City,Branch_Location
from EMPLOYEE_Table1 inner join BRANCH_Table on EMPLOYEE_Table1.Employee_Id=BRANCH_Table.Branch_Id  


 select * from Transfer_Ammount
 
 alter table Manage_Account
 add balance bigint 
 
  alter table Manage_Account
  alter column balance int
  alter table Manage_Account
  drop column balance
  
select * from Create_Account
delete from Create_Account where Account_NO = 8   
 
 select Employee_Id,Employee_Name,Branch_Id from EMPLOYEE_Table1 where Branch_Id=1
 Select all Branch_Id  from EMPLOYEE_Table1 where Branch_Id=1
 
 select * from BRANCH_Table 
 Select all((max(cast(Branch_Id as bigint)))+1) from EMPLOYEE_Table1
   
 Select count(Branch_Id) as bigint from EMPLOYEE_Table1 where Branch_Id=1
 
   Select count(Branch_Id) as bigint from EMPLOYEE_Table1 where Branch_Id=2


select * from Bank
select * from BRANCH_Table

select * from EMPLOYEE_Table1
select * from Create_Account
insert into Bank values (1,'Sharyar','Karachi')

select * from With_Draw_Ammount

insert into With_Draw_Ammount values(11,'Abdullah',10000,12000,'Current','Monthly Saver',2,4)

alter table persontbl add constraint persontbl_genderid_FK 
foreign key(GenderId)references gendertbl(ID)


alter table With_Draw_Ammount add constraint fk_With_Draw
foreign key (Credit_Account_No) references Create_Account(Account_NO) 

select *  from Bank

delete from Bank where Bank_Id=2


alter table With_Draw_Ammount 
ADD CONSTRAINT CHK_Ammount CHECK (Ammount > 0 AND Ammount < 1000)



 

create table View_Manageed_Account
(
Id bigint primary key identity(1,1),
Managed_Details varchar(1000)
)
create table Customer_Record
(
Id int primary key identity(1,1),
Name varchar(50),
Salary int,
Gender varchar(10),
Department int
)
insert into Customer_Record values
('Syed Affan Ahmed',2500,'Male',20),
('Ramish Ahmed',2000,'Female',20),
('Syed Haseeb',1300,'Male',10),
('Hassam Kazmi',1500,'Male',10)


delete from Customer_Record where id=4





select * from Customer_Record
select* from View_Manageed_Account



insert into Customer_Record values
('Ahsan Malik',2100,'Male',20)


create table Employee_Record
(
Employee_Id bigint primary key,
Employee_Name nvarchar(50),
Employee_Salary bigint,
Employee_Password bigint,
Employee_Contact_Number nchar(11),
Employee_Email_ID varchar(50),
Employee_Gender varchar(25),
Employee_Age int, 
Branch_Id bigint

)
insert into Employee_Record values
(1,'Hassam',25000,03035100225,03142755100,'@ab','Male',19,1),
(2,'Kazmi',25000,03212348310,03142755100,'@ab','Male',19,2),
(4,'ALI',25000,03212348310,03142755100,'@ab','Male',19,3),
(55,'Usman',25000,03212348310,03142755100,'@ab','Male',19,2)
 
create table View_Employee
(
Id bigint primary key identity(1,1),
Employee_Details varchar(1000)
)



insert into Employee_Record values
(56,'Sharyar',25000,03212348310,03142755100,'@ab','Male',19,4)
select * from Employee_Record
select * from View_Employee

create table View_Employee_Record
(
Id bigint primary key  ,
Employee_Details varchar(1000)
)









