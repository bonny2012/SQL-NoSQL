# SQL-NoSQL

This is a project from course intro to database.Below are the requirement
1. Create a database with name CECSProject. 
2. Inside this database, create the following tables: 
• Professor, with attributes faculty-id (an auto-generated key), name, age, office-building, office-number, phone-number, dept (a foreign key to Department). 
• Department, with attributes dept-code (the key, a 4-letter code), name, address, school (the school that the department belongs to, e.g Business, Arts and Letters, etc.) and chair, a foreign key to Professor. 
• Course, with attributes did (a foreign key to Department), cnumber (a four digit number), title, num-credits, teacher (a foreign key to Professor). The key of this table is (did, cnumber). 
• Students, with attributes sid (an auto-generated key), name, address, date-of-birth. 
1 
• Enrolls, with attributes sid, did, cnumber, semester, year, where sid is a foreign key to Student, (did,cnumber) is a foreign key to Course, Semester is one of Spring, Fall, Summer, and the key for the table is the whole schema (students are allowed to enroll in a course more than once). 
• Grades with attributes sid, did, cnumber, grade, where sid is a foreign key to Student, (did,cnumber) is a foreign key to Course, and (sid, did, cnumber) is the table key. Grade is a letter between A and D, F, or I. This table registers the grade that a student gets in a course s/he is enrolled in once the semester is over. 
You will have to pick adequate data types for each attribute. Make sure to declare all primary key and all foreign keys in order to have integrity constraints. 
3. Create a trigger that checks that students only appear in table Grades with courses for which they appear in Enrolls. That is, whenever tuples (sid,cid,cnumber,grade) is entered in Grades, there is already a tuple (sid,cid,cnumber,semester,year) in Enrolls with the same sid, cid, number; otherwise, the insertion is rejected. Also, grade should be one of A, B, C, D, F, I; an invalid value should get the insertion rejected. 
4. Insert at least five tuples into each relation (you can make up the values, but they should be valid 
data, i.e. respecting all constraints). 
5. Create a (regular) table called StudentPerformance with attributes sid (a primary key here, and a 
foreign key to Student too), and gpa, a numerical attribute. 
(a) Populate the table with a query that calculates, for each student, his/her gpa based on course grades taken so far (i.e. in table Grades). To calculate gpa, skip all grades that are I, and convert the rest to numbers by using the table below. Add all grades and divide by the number of courses taken (including those with Is). 
A 4.0 B 3.5 C 3.0 D 2.5 F 1.0 (b) Create a trigger to keep the table StudentPerformance updated as the database registers new entries in Grades. Important: you cannot recalculate the whole table from scratch; you should update only the information that has changed as a result of insertions. Note that this may result in a new student being added or on the gpa of an existing student being modified. 
