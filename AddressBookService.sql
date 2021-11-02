-- AddressBook Service
-- UC1 Creating database as AddessBookService
create database AddressBookService;
show databases;
use AddressBookService;

-- UC2  creating table as AddressBook with attributes
create table AddressBook (
firstName varchar(50) not null,
lastName varchar(50) not null,
address varchar(100) not null,
city varchar(50) not null,
state varchar(50) not null,
zip int not null,
phoneNumber double not null,
email varchar(100) not null );

desc AddressBook;

-- UC3 inserting new Contacts to AddressBook table
 insert into AddressBook (firstName, lastName, address,city, state, zip,phoneNumber,email) values
 ('Prashant', 'Phad','Ambajogai','Beed','Maharashatra',431517,9970899057 ,'Pvphad@gmail.com'),
 ('Prasad','Jadhav','Parli','Beed','Maharashatra',431519,8378960482,'prasad@gmail.com'),
 ('Ajay','kate','Bhum','Hindupur','AndraPradesh',520102,9921802855,'AjayK@gmail.com'),
 ('Ajeeth','Sable','sirinagara','chennai','Tamilnadu',3021402,9999999999,'ajiths@gmail.com'),
   ('Pratik', 'S','Kej','Beed','Maharashatra',431517,9999999999,'PratikS@gmail.com');

desc AddressBook;
select * from AddressBook;

-- UC4 editing the existing contact by their firstname
update AddressBook set  lastName='Johnson' where firstName='Prasad';
 
 SET SQL_SAFE_UPDATES = 0;
select * from addressBook;

-- UC5 -deleting the contact by their lastname
delete from addressBook where lastname='Phad';
select * from AddressBook;

-- uc6 retrieving the contact by city or state
 select * from AddressBook where city = 'Beed' or State='Maharashatra';
 
-- UC7 size of addressbook by city and state
 select count(firstname) from AddressBook where city = 'Beed';
 
 -- UC8 soriting the name alphbetically for given city 
insert into AddressBook(firstname,lastname,address,city,state,zip,phoneNumber,email)
values ('Akash','V','coorg','Chikkamagalur','Karnatak',50102,9168181517,'Akash@gmail.com');

insert into AddressBook(firstname,lastname,address,city,state,zip,phoneNumber,email)
values('Vaibhav','vepula','tkota','kakinada','telangana',851026,912121211,'Vaibhav@gmail.com');

 insert into AddressBook(firstname,lastname,address,city,state,zip,phoneNumber,email) 
 values('Mohin','Sayyad','pilwada','benagaluru','karnataka',652142,9970899057,'Mohin@gmail.com');
 
  select * from AddressBook;
   select firstname,city from AddressBook order by city;
   
   -- UC9- altering the table with addressbook name and contact type
alter table addressbook add bookName varchar(25) not null, add contactType varchar(25)  not null;
desc addressBook;
update AddressBook set bookname='one', contactType='Family' where lastname='Sable' ;
update addressBook set bookname='two' ,contactType='Friends' where firstname='Mohin'; 
update addressBook set bookName='one', contactType='family' where lastname='vipula';
update addressbook set bookname='two',contactType='Profession' where firstname='Vaibhav';
select * from addressbook;

select * from addressbook where contactType='Family';
select * from AddressBook where contacttype='Friends';


-- UC10 ability to get count of contacts by contact type

select count(firstname) from AddressBook where contactType='family';