--drop table Member
--drop table Provider
--drop table Claims
--drop table Facility
--drop table Insurance


create table Member
("Member ID" int,
 "Member First Name" varchar(100),
 "Member Last Name" varchar(100),
 MBI varchar(100),
 "Email ID" varchar(100),
 Address varchar(100))

insert into Member values(102, 'Harry', 'Mac', '1AZ9-GU8-8TW3', 'Harry_Mac@gmail.com', '2190 Six Mile Rd, MI')
insert into Member values(204, 'John', 'Rey', '2ue5-ej4-4nd9', 'John_Ray@gmail.com', '3220 Eight Mile Rd, MI')
insert into Member values(306, 'Tim', 'Cook', '8hd2-ud1-5gl6', 'Tim_cook@gmail.com', '7362 Four Mile Rd, MI')
insert into Member values(408, 'Sam', 'Duke', '6hs7-xb7-7js4', 'Sam_Duke@gmail.com', '6281 Seven Mile Rd, MI')
insert into Member values(500, 'Jim', 'Plate', '3hd7-du2-8dn3', 'Jim_Plate@gmail.com', '1928 Nine Mile Rd, MI')
insert into Member values(602, 'Nick', 'Merc', '9sh2-aj8-5bs9', 'Nick_Merc@gmail.com', '5272 Five Mile Rd, MI')

create table Provider
("Provider ID" int,
 "Provider First Name" varchar(100),
 "Provider Last Name" varchar(100),
 Facility varchar(100),
 "Provider NPI" varchar(100),
 "Tax No" varchar(100))

insert into Provider values(10, 'Danny', 'M', 'Henry Ford', 7876543219, '965-45-8547')
insert into Provider values(20, 'Kate', 'W', 'Trinity Health', 2352678189, '995-28-5368')
insert into Provider values(30, 'Ria', 'K', 'Beaumont Health', 2838349549, '956-54-7458')
insert into Provider values(40, 'Liam', 'R', 'Ascension', 3638563779, '945-75-5487')
insert into Provider values(50, 'Wilson', 'B', 'Henry Ford', 5935274759, '921-38-4578')
insert into Provider values(60, 'Patrick', 'N', 'Trinity Health', 6328484289, '936-82-2387')

create table Claims
("Member ID" int,
 "Provider ID" int,
 "Facility ID" varchar(100),
 "Claim ID" int,
 "Diagnosis Code" varchar(100),
 "Procedure Code" varchar(100),
 "Bill Amount" varchar(100))

insert into Claims values(102, 10, 412, 1, 'R94.120', 90832, '$3250')
insert into Claims values(204, 20, 513, 1, 'H93.292', 90834, '$5000')
insert into Claims values(306, 30, 614, 2, 'H61.112', 90837, '$2800')
insert into Claims values(408, 40, 715, 3, 'R94.121', 90846, '$3800')
insert into Claims values(500, 50, 816, 3, 'H61.111', 90847, '$5090')
insert into Claims values(602, 60, 917, 4, 'H93.292', 90853, '$4400')

create table Facility
("Facility ID" int,
 "Facility Name" varchar(100),
 "Provider ID" int,
 "Location" varchar(100))

insert into Facility values(909, 'Henry Ford', 10, 'West Bloomfield')
insert into Facility values(808, 'Trinity Health', 20, 'Livonia')
insert into Facility values(707, 'Beaumont Health', 30, 'Novi')
insert into Facility values(606, 'Ascension', 40, 'Northville')
insert into Facility values(505, 'Henry Ford', 10, 'West Bloomfield')
insert into Facility values(404, 'Trinity Health', 10, 'Livonia')

create table Insurance
("Insurance ID" varchar(100),
 "Insurance Name" varchar(100),
 "Member ID" int)

insert into Insurance values('U9283920293', 'Cigna', 102)
insert into Insurance values('A9338483838', 'Aetna', 204)
insert into Insurance values('B8823784883', 'BCBS', 306)
insert into Insurance values('U2341838239', 'Cigna', 408)
insert into Insurance values('B3839238984', 'BCBS', 500)
insert into Insurance values('A8428747492', 'Aetna', 602)

--create table Diagnosis
--("Diagnosis code" varchar(100),
 --"Procedure code" varchar(100),
 --"Member ID" int,
 --"Provider ID" int,
 --"Facility ID" int)

--Insert into Diagnosis values('R94.120', 90832, 102, 10, 909)
--Insert into Diagnosis values('H93.292', 90834, 204, 20, 808)
--Insert into Diagnosis values('H61.112', 90837, 306, 30, 707)
--Insert into Diagnosis values('R94.121', 90846, 408, 40, 606)
--Insert into Diagnosis values('H61.111', 90847, 500, 50, 505)
--Insert into Diagnosis values('H93.292', 90853, 602, 60, 404)


select * from Member
select * from Provider
select * from Claims
select * from Facility
select * from Insurance

Select M.[Member ID],
       M.[Member First Name], 
       M.[Member Last Name], 
	   M.MBI,
       I.[Insurance ID], 
	   I.[Insurance Name]
from Member M
join Insurance I
on M.[Member ID] = I.[Member ID]


Select P.[Provider ID], 
       P.[Provider First Name], 
	   P.[Provider Last Name],
	   F.[Facility ID],
	   F.[Facility Name]
from Provider P
join Facility F
on P.[Provider ID] = F.[Provider ID]


select M.[Member ID],
       M.[Member First Name],
	   M.[Member Last Name],
	   M.MBI,
	   C.[Provider ID],
	   C.[Claim ID],
	   C.[Diagnosis Code],
	   C.[Procedure Code],
	   C.[Bill Amount]
from Member M
left join Claims C
on M.[Member ID] = C.[Member ID]


select *
from Member
where [Member Last Name] = 'Cook'


select M.[Member ID],
       C.[Bill Amount]
from Member M
join Claims C
on M.[Member ID] = C.[Member ID]
--where C.[Bill Amount] = '$2800'


select *
from Member M
left join Claims C
on M.[Member ID] = C.[Member ID]
where C.[Bill Amount] = '$5000'


select *
from Provider 
where Facility = 'Ascension'


select * 
from Member M
left join Provider P
on 
left join Claims C
on 
left join Insurance I


