CREATE TABLE contactType(
	contact_id int NOT NULL PRIMARY KEY,
	contact_type varchar(50) NOT NULL UNIQUE
	
);

CREATE TABLE personRole(
	person_id int PRIMARY KEY,
	person_role varchar(50) UNIQUE
	
);

CREATE TABLE person(
	person_id int NOT NULL PRIMARY KEY,
	first_name VARCHAR (50) NOT NULL,
	last_name VARCHAR (50) NOT NULL,
	dob DATE,
	manager_id int NOT NULL,
	salary int NOT NULL,
	contact_id int NOT NULL,
	FOREIGN KEY(contact_id) REFERENCES contactType(contact_id)
);

/*One-to-one relationship with table contactType */
CREATE TABLE contact(
	contact_id int PRIMARY KEY,
	FOREIGN KEY(contact_id) REFERENCES contactType(contact_id),
	contact_number BIGINT NOT NULL
);

CREATE TABLE projectPerson(
	projectPerson_ID int PRIMARY KEY,
	person_name char(50),
	person_role varchar(50),
	FOREIGN KEY (person_role) REFERENCES personRole(person_role)
	
);

CREATE TABLE project(
	ser_no SERIAL ,
	project_id int UNIQUE,
	project_topic char(100) NOT NULL,
	project_desc varchar(200),
	project_type varchar(20)
	CONSTRAINT CHK_project CHECK (project_type = 'Hardware' OR project_type='Software')
);


/* Alter Table Queries*/

ALTER TABLE contactType ADD contact_name VARCHAR(70) NOT NULL;

ALTER TABLE person ADD person_role_id int NOT NULL;
ALTER TABLE person ADD CONSTRAINT person_role_constraint FOREIGN KEY (person_role_id) REFERENCES personRole(person_id);
ALTER TABLE person ADD project_id int NOT NULL;
ALTER TABLE person ADD CONSTRAINT project_id_constraint FOREIGN KEY (project_id) REFERENCES project(project_id);

ALTER TABLE projectPerson ADD project_id int NOT NULL;
ALTER TABLE projectPerson ADD CONSTRAINT project_id_constraint FOREIGN KEY (project_id) REFERENCES project(project_id);

ALTER TABLE person ADD gender char(10);

/*Adding data into table*/

INSERT INTO contactType (contact_id , contact_type, contact_name) VALUES ( 1320 , 'For Paper Publishing', 'Prof. Masoodha Modak');
INSERT INTO contactType (contact_id , contact_type, contact_name) VALUES ( 1459 , 'For Black Book', 'Prof. Pranita Mahajan');
INSERT INTO contactType (contact_id , contact_type, contact_name) VALUES ( 1434 , 'For intermediate presentation', 'Prof. Ashwin Chavan');
INSERT INTO contactType (contact_id , contact_type, contact_name) VALUES ( 1390 , 'For Report Queries', 'Prof. Preeti Godbole');
INSERT INTO contactType (contact_id , contact_type, contact_name) VALUES ( 1116 , 'For Latex', 'Prof. Namrata Patel');

INSERT INTO personRole (person_id , person_role) VALUES ( 1 , 'Group Member');
INSERT INTO personRole (person_id , person_role) VALUES ( 2 , 'Group Leader or POC');
INSERT INTO personRole (person_id , person_role) VALUES ( 3 , 'Guide');
INSERT INTO personRole (person_id , person_role) VALUES ( 4 , 'Panel Member');

INSERT INTO project(project_id, project_topic, project_desc, project_type) values(1178,'Football Scouting','AI based football scout, to help recruit the best player for the team','Software');
INSERT INTO project(project_id, project_topic, project_desc, project_type) values(8909,'COVID-19 Vaccine','Using AI to predict the mutation in the genome sequences of the virus to help facilitate speedy vaccine manufacturing process','Software');
INSERT INTO project(project_id, project_topic, project_desc, project_type) values(6745,'Drone Survellience','Using drone to locate places where people violate social distancing norms and report the concerned authority','Hardware');
INSERT INTO project(project_id, project_topic, project_desc, project_type) values(7890,'Sentiment Analysis','Analyze tweets on twitter to identity reactions on a particular topic','Software');
INSERT INTO project(project_id, project_topic, project_desc, project_type) values(6762,'Study Analyzer','Analyse students attention span during online lectures and track his/her progress','Software');
INSERT INTO project(project_id, project_topic, project_desc, project_type) values(7690,'Elder-Care Companion','Chat-Bot, that would talk to the person keep track of his mental and physical health and remind him of the medicine at proper time.','Software');
INSERT INTO project(project_id, project_topic, project_desc, project_type) values(8907,'Helper Bot','A bot that would help a doctor/nurse care for patients from a distance. This bot takes care of the patient, cleans him, cleans is bed , gives him medicines and food.','Hardware');
INSERT INTO project(project_id, project_topic, project_desc, project_type) values(9026,'Clean-spray Bot','A bot that would spray disinfectant in affected areas, it works on optimization algorithm to reduce the time required','Hardware');
INSERT INTO project(project_id, project_topic, project_desc, project_type) values(1825,'Note-IT','An app that would note all the important points you want to note on your voice command','Software');

INSERT INTO person (person_id, first_name, last_name, dob, manager_id, salary, contact_id,gender,person_role_id,project_id) values (1116, 'Sayali','Patil','1998-03-31',3, 40000, 1320 ,'Female',1,1178);
INSERT INTO person (person_id, first_name, last_name, dob, manager_id, salary, contact_id,gender,person_role_id,project_id) values (1567, 'Divya','Patil','2002-11-16',98, 11000, 1116,'Female', 1,8909 );
INSERT INTO person (person_id, first_name, last_name, dob, manager_id, salary, contact_id,gender,person_role_id,project_id) values (1171, 'Shantau','Ghar','1998-11-11',16, 25000, 1459 ,'Male' ,2,1178);
INSERT INTO person (person_id, first_name, last_name, dob, manager_id, salary, contact_id,gender,person_role_id,project_id) values (1816, 'Shubham','Kokane','1998-07-21',56, 9000, 1320 ,'Male',2,6745);
INSERT INTO person (person_id, first_name, last_name, dob, manager_id, salary, contact_id,gender,person_role_id,project_id) values (787, 'Rizwanna','Sheikh','1978-06-06',88, 78000, 1390 ,'Female',3,7890);
INSERT INTO person (person_id, first_name, last_name, dob, manager_id, salary, contact_id,gender,person_role_id,project_id) values (1870, 'Pranita','Mahajan','1988-08-10',8886, 90000, 1390 ,'Female',4,1178);
INSERT INTO person (person_id, first_name, last_name, dob, manager_id, salary, contact_id,gender,person_role_id,project_id) values (1002, 'Sumeet','Hande','1998-02-12',78, 12000, 1434 ,'Male',1,6762);
INSERT INTO person (person_id, first_name, last_name, dob, manager_id, salary, contact_id,gender,person_role_id,project_id) values (1956, 'Tejas','Deskmukh','1998-08-29',3, 60000, 1390 ,'Male', 2, 6745);
INSERT INTO person (person_id, first_name, last_name, dob, manager_id, salary, contact_id,gender,person_role_id,project_id) values (2970, 'Venkhatesh','Arunachalam','1999-01-29',99, 1434, 1320,'Male',1,7890 );
INSERT INTO person (person_id, first_name, last_name, dob, manager_id, salary, contact_id,gender,person_role_id,project_id) values (6756, 'Maithili','Pathak','1998-05-29',89, 1000, 1390 ,'Female',1,8907);
INSERT INTO person (person_id, first_name, last_name, dob, manager_id, salary, contact_id,gender,person_role_id,project_id) values (5656, 'Aakriti','Pathak','1998-10-29',89, 10000, 1459 ,'Female',2,8907);
INSERT INTO person (person_id, first_name, last_name, dob, manager_id, salary, contact_id,gender,person_role_id,project_id) values (67, 'Kranti','Bade','1988-10-29',4, 10000, 1459 ,'Female',3,6762);

INSERT INTO contact (contact_id, contact_number) values(1320, 9820700982);
INSERT INTO contact (contact_id, contact_number) values(1459, 9757022831);
INSERT INTO contact (contact_id, contact_number) values(1434, 8879281311);
INSERT INTO contact (contact_id, contact_number) values(1390, 9619946162);
INSERT INTO contact (contact_id, contact_number) values(1116, 9967164790);


INSERT INTO projectPerson(projectPerson_ID, person_name, person_role,project_id) values(67,'Prof. Kranti Bade',3,6762);
INSERT INTO projectPerson(projectPerson_ID, person_name, person_role,project_id) values(787,'Prof. Dr. Rizwanna Sheikh',3,7890);
INSERT INTO projectPerson(projectPerson_ID, person_name, person_role,project_id) values(1870,'Prof. Pranita Mahajan',4,1178);
INSERT INTO projectPerson(projectPerson_ID, person_name, person_role,project_id) values(143,'Prof. Dr. Aparna Bannore',4,6762);
INSERT INTO projectPerson(projectPerson_ID, person_name, person_role,project_id) values(12,'Prof. Seema Khan',3,8909);
INSERT INTO projectPerson(projectPerson_ID, person_name, person_role,project_id) values(45,'Prof. Ali Mohommad Sheikh',4,8907);
INSERT INTO projectPerson(projectPerson_ID, person_name, person_role,project_id) values(61,'Prof. Kantimathi Iyer',3,6745);
INSERT INTO projectPerson(projectPerson_ID, person_name, person_role,project_id) values(124,'Prof. Varsha Patil',3,8909);
INSERT INTO projectPerson(projectPerson_ID, person_name, person_role,project_id) values(516,'Prof. Anindita Khade',4,9026);
INSERT INTO projectPerson(projectPerson_ID, person_name, person_role,project_id) values(22,'Prof. Deepti Reddy',3,1825);


TABLE contactType;
TABLE personRole;
TABLE project;
TABLE person;
TABLE contact;
TABLE person; 



SELECT last_name, first_name FROM person where manager_id = 3;

/* DML commands
1) SELECT : select data from database
2) INSERT : insert data into database
3) UPDATE : modify data present in the database
4) DELETE : delete data from the database
*/

SELECT * FROM person;

SELECT * FROM person WHERE person_role_id=1;

INSERT INTO person (person_id, first_name, last_name, dob, manager_id, salary, contact_id,gender,person_role_id,project_id) values (1907, 'Sonal','Mali','1998-06-11',1, 5000, 1390 ,'Female',1,8909);

UPDATE person SET last_name= 'Chavan' , dob = '1998-05-01' WHERE project_id=8909 and last_name='Mali';

DELETE FROM person WHERE person_id=1907 ;



/*
DML commands 
1) CREATE : to create a database and its objects like (table, index, views, store procedure, function, and triggers)
2) ALTER : alters the structure of the existing database
3) DROP : delete objects from the database
4) TRUNCATE : remove all records from a table, including all spaces allocated for the records are removed
5) RENAME : rename an object
*/

CREATE VIEW teamMembers AS
SELECT last_name, first_name, person_role_id
FROM person
WHERE project_id=1178

ALTER TABLE person ADD age int DEFAULT 0;

ALTER TABLE person
RENAME COLUMN age TO cal_age;

CREATE TABLE categories(
	category_id int,
	category_name VARCHAR(50)
);

INSERT INTO categories(category_id,category_name) VALUES (1,'Hardware');
INSERT INTO categories(category_id,category_name) VALUES (2,'Software');

TRUNCATE TABLE categories;

TABLE categories;

ALTER TABLE person ADD COLUMN full_name VARCHAR(100);

UPDATE person SET full_name = CONCAT(first_name, '  ', last_name);

SELECT person_id,first_name,last_name, AGE(dob) AS age FROM person;

WITH personNew AS(
	SELECT * , ROW_NUMBER() over(PARTITION by manager_id order by manager_id) as RowNumber
	from person
)

DELETE FROM person WHERE person_id IN(SELECT person_id FROM personNew WHERE RowNumber>1);

SELECT COUNT(person_id) FROM person AS afterFilter

SELECT * FROM person where contact_id = 1390;

SELECT * FROM project WHERE project_id = (SELECT project_id from person WHERE last_name ='Ghar');

SELECT * FROM person WHERE salary >30000;

SELECT * FROM person WHERE first_name LIKE 'S%';

SELECT COUNT(person_id) FROM person WHERE salary NOT BETWEEN 40000 AND 80000;

SELECT count(person_id) FROM person WHERE salary BETWEEN (SELECT salary FROM person where dob = '1998-07-21') AND (SELECT salary FROM person 
																												 WHERE manager_id=3);
																												 
SELECT * FROM person WHERE person_id = (SELECT person_id FROM person WHERE salary = (SELECT MIN(salary) FROM person)) ;
SELECT * FROM person WHERE person_id = (SELECT person_id FROM person WHERE salary = (SELECT MAX(salary) FROM person)) ;
SELECT AVG(salary) AS AverageSalary FROM person;

SELECT person_id,person_role FROM personRole a 
WHERE a.person_id=4
UNION
SELECT contact_id,contact_type FROM contactType 
WHERE contact_id=1390;

SELECT count(person_role_id),person_role_id FROM person GROUP BY person_role_id;
SELECT COUNT(gender),gender FROM person GROUP BY gender;																							

SELECT COUNT(person_role_id), person_role_id
FROM person
GROUP BY person_role_id
HAVING person_role_id > 1;

/*JOINS*/

SELECT contact.contact_id, contact.contact_number , person.person_id,person.full_name
FROM contact
INNER JOIN person ON contact.contact_id=person.contact_id;

SELECT *
FROM project
LEFT JOIN person
ON project.project_id = person.project_id;

SELECT *
FROM contactType
RIGHT JOIN projectPerson
ON contactType.contact_name = projectPerson.person_name;

SELECT A.full_name AS teamMember1, B.full_name AS teamMember2, A.project_id
FROM person A, person B
WHERE A.person_id <> B.person_id
AND A.project_id = B.project_id
ORDER BY A.project_id;		

SELECT *
FROM projectPerson
FULL OUTER JOIN contactType
ON projectPerson.person_name = contactType.contact_name
ORDER BY projectPerson.person_name;



SELECT *
FROM person a
WHERE EXISTS
(SELECT manager_id FROM person b WHERE a.manager_id=b.manager_id and manager_id=4);

SELECT a.full_name, a.person_id, b.project_topic,b.project_desc 
FROM person AS a , project as b
WHERE a.project_id=b.project_id;

SELECT COUNT(a.person_role_id),a.person_role_id , b.person_role
FROM person AS a, personRole AS b
WHERE a.person_role_id=b.person_id
GROUP BY person_role, person_role_id;

INSERT INTO person (person_id, first_name, last_name, dob, manager_id, salary, contact_id,gender,person_role_id,project_id) values (1, 'Prajakta','Khade','1999-03-09',9, 8000, 1390 ,'Female',3,1825);
INSERT INTO person (person_id, first_name, last_name, dob, manager_id, salary, contact_id,gender,person_role_id,project_id) values (2, 'Prajakta','Khade','1999-03-09',9, 8000, 1390 ,'Female',3,1825);
INSERT INTO person (person_id, first_name, last_name, dob, manager_id, salary, contact_id,gender,person_role_id,project_id) values (3, 'Prajakta','Khade','1999-03-09',9, 8000, 1390 ,'Female',3,1825);

UPDATE person SET dob='1998-10-09' WHERE person_id=1

DELETE FROM person WHERE first_name='Prajakta' and dob !='1998-10-09';

/*TRANSACTIONS*/

BEGIN;
INSERT INTO person (person_id, first_name, last_name, dob, manager_id, salary, contact_id,gender,person_role_id,project_id) values (3, 'Jagruti','Shete','1999-03-09',9, 8000, 1390 ,'Female',3,1825);
ROLLBACK;

BEGIN;
INSERT INTO person (person_id, first_name, last_name, dob, manager_id, salary, contact_id,gender,person_role_id,project_id) values (3, 'Jagruti','Shete','1999-03-09',9, 8000, 1390 ,'Female',3,1825);
COMMIT;

/*PROCEDURE*/

CREATE OR REPLACE PROCEDURE mergeAllTables()
LANGUAGE plpgsql    
AS $$
BEGIN
   
   	CREATE VIEW personTableCombined AS
   	SELECT a.salary,a.full_name,c.contact_number,c.contact_id, b.contact_name,b.contact_type,d.person_role, d.person_id,e.project_id,e.person_name,f.project_topic,f.project_desc
	FROM person AS a, contactType AS b, contact AS c, personRole AS d, projectPerson AS e,project AS f 
	WHERE a.salary =  (SELECT salary FROM person WHERE person_id=1171)  AND c.contact_id = (SELECT contact_id FROM person WHERE person_id=1171) 
		AND b.contact_id = (SELECT contact_id FROM person WHERE person_id=1171)
		AND d.person_id=(SELECT person_role_id FROM person WHERE person_id=1171) AND e.project_id=(SELECT project_id FROM person WHERE person_id=1171)
		AND f.project_id=(SELECT project_id FROM person WHERE person_id=1171);
	COMMIT;
END;
$$;

SELECT * FROM personTableCombined


