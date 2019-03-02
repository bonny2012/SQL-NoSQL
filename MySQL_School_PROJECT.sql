


create database CECSProject;
use CECSProject;

create table Professor(
faculty_id INT primary key AUTO_INCREMENT,name VARCHAR(20), age INT(2),office_building VARCHAR(20),office_number INT(5),phone_number INT(12),dept VARCHAR(4));

create table  Department(
dept_code VARCHAR(4) primary key,
name VARCHAR(20),
address VARCHAR(50),
school VARCHAR(20));

create table chair(
faculty_id INT,
dept_code VARCHAR(4),
primary key(faculty_id,dept_code),
constraint fk_1 foreign key(faculty_id) references 
Professor(faculty_id),
constraint fk_2 foreign key(dept_code) references 
Department(dept_code));


ALTER TABLE Professor  add constraint c_fk foreign key (dept) references Department (dept_code) ON DELETE CASCADE ON UPDATE SET NULL;


create table Course(
did VARCHAR(4),
cnumber INT,title VARCHAR(20),num_credits INT(1),
teacher int,
primary key(did, cnumber),
constraint fk_3 foreign key(did) references 
Department(dept_code),
constraint fk_4 foreign key(teacher) references 
Professor(faculty_id));


create table Students(
sid int primary key AUTO_INCREMENT,name VARCHAR(20),address VARCHAR(50),date_of_birth date);


create table Enrolls(
item_no int primary key AUTO_INCREMENT,  
sid int,
did VARCHAR(4),
cnumber INT,
year int(4),
semester enum('Spring','Summer','Fall'),
constraint fk_6 foreign key(did, cnumber) references 
Course(did,cnumber), 
constraint fk_5 foreign key(sid) references 
Students(sid));




create table Grades(
sid int,
did VARCHAR(4),
cnumber int,
constraint fk_7 foreign key(sid) references 
Students(sid),
constraint fk_8 foreign key(did, cnumber) references 
Course(did,cnumber), 
grade enum('A','B','C','D','F','I'),
primary key(sid,did,cnumber));


delimiter //
create TRIGGER enrollcheck before INSERT ON Grades
FOR EACH ROW
BEGIN
	IF (select count(*) 
			 FROM  Enrolls AS E
			 WHERE E.sid=new.sid and E.did=new.did and E.cnumber=new.cnumber)=1
	
	then	
	    SET @sid=new.sid,
	        @did=new.did,
	        @cnumber=new.cnumber;

	end if;
end//
DELIMITER ;





insert into Department values('CECS','computer science','132 Eastern Pkwy, Louisville, KY 40292','speed school'),('ELEC','Electricity','359 Eastern Pkwy, Louisville, KY 40292','speed school'), ('MECH','Mechnical','168 Eastern Pkwy, Louisville, KY 40292','speed school'),
('MATH','math','789 Eastern Pkwy, Louisville, KY 40292','natural science'),('ENGL','English','978 Eastern Pkwy, Louisville, KY 40292','Art school');


insert into Professor values (1,'John Roberson',42,'DC',202,50222222,'CECS'),(2,'Simon Canes',39,'DC',209,50211111,'CECS'),(4,'Jacob Amick',44,'AB',102,50233333,'ELEC'),(3,'Edwards,Bent',39,'EG',206,50244444,'MECH'),(5,'Ray Taylor',55,'MN',109,50255555,'MATH'),(6,'John Smith',45,'GH',333,52066666,'ENGL'),(7,'Franklin Wong',49,'MN',201,52077777,'ENGL'),(8,'Joyce English',36,'BA',207,50288888,'MATH'),(9,'James Borg', 36,'KL',136,50299999,'ELEC');

insert into chair values(1,'CECS'),(4,'ELEC'),(3,'MECH'),(7,'ENGL'),(8,'MATH');


insert into Course values('CECS',3305,'C and C++',3,1);
insert into Course values('ENGL',1308,'Business Writing',3,6), ('MECH',5830,'Auto CAD',3,3),('MATH','4320','Linear Algebra',3,5),('ELEC',2587,'Circuit diagram',3,9);

insert into Students values(1,'James,Narayan','731 Fondren,Houston,KY','2000-07-02');
insert into Students values
(2,'Ahmad Jabbar','980 Dallas,Jefferson,KY','2001-08-28');
insert into Students values
(3,'Alicia,Smith','5631 Fire Oak,Humble,KY','2000-10-08'),
(4,'Justin,Lee','450 Stone,Oldham,KY','1997-02-19'),
(5,'Jennifer Borg','638 Voss,Bellaire, kY','1992-05-02'),
(6,'RHEESE Golden','450 Stone Jefferson,KY','1991-10-28');

insert into Enrolls values
(1,5,'CECS',3305,2015,'Spring');
insert into Enrolls values
(2,2,'ELEC',2587,2015,'Spring'),
(3,3,'ENGL',1308,2016,'Summer'),
(4,4,'MECH',5830,2016,'Fall'),
(5,5,'MATH',4320,2015,'Fall'),
(6,6,'ELEC',2587,2015,'Spring'),
(7,5,'ENGL',1308,2016,'Summer'),
(8,3,'MECH',5830,2016,'Fall'),
(9,2,'MATH',4320,2015,'Fall');


insert into Grades values(2,'MATH',4320,'A');
insert into Grades values(3,'MECH',5830,'B');
insert into Grades values
(5,'CECS',3305,'F'),
(2,'ELEC',2587,'A'),
(3,'ENGL',1308,'B'),
(4,'MECH',5830,'C'),
(5,'MATH',4320,'D'),
(6,'ELEC',2587,'I'),
(5,'ENGL',1308,'A');





create table GPA_trascript(
grade enum('A','B','C','D','F','I'),
score decimal(2,1),
primary key(grade, score));

insert into GPA_trascript values('A',4.0),('B',3.5),('C',3.0),('D',2.5),('F',1.0),('I',0.0);



create table StudentPerformance(
sid int primary key,
constraint fk_10 foreign key(sid) references 
Students(sid),
gpa decimal(2,1));


insert into StudentPerformance(sid,gpa)
SELECT GR.sid,avg(score)as gpa
FROM GPA_trascript as G,Grades as GR
WHERE G.grade=GR.grade 
GROUP BY GR.sid;

delimiter //

create TRIGGER update_STperformance AFTER update on 
Grades
FOR each row

BEGIN
drop  temporary table if exists temp1;
create temporary table temp1(sid int primary key AUTO_INCREMENT,gpa decimal(2,1),num int);

insert into temp1(sid,gpa,num)
SELECT GR.sid,avg(score)as gpa, count(GR.grade)as num
FROM  GPA_trascript as G,Grades as GR
WHERE G.grade=GR.grade AND GR.sid=NEW.sid
GROUP BY GR.sid;

IF ((select num from temp1)=1)
THEN INSERT INTO StudentPerformance(sid,gpa) values (new.sid,temp1.gpa);

ELSE 
update StudentPerformance set gpa=temp1.gpa where sid=temp1.sid;

end if;

END//

delimiter ;







   












