create database Patient_Diagnosis_Report;
use Patient_Diagnosis_Report;

/*1. Write a query to create a patients table with the date, patient ID, patient name, age, 
weight, gender, location, phone number, disease, doctor name, and doctor ID fields*/

create table patient ( 
date date not null, 
patientID varchar(40) not null ,
pname varchar(40) not null , 
age int not null, 
weight dec not null , 
gender varchar(40) not null, 
location varchar(40) not null, 
phone_number int not null, 
disease varchar(40) not null, 
doctorname varchar(40) not null,
doctorID varchar(40) not null,
primary key(patientID));

#2. Write a query to insert values into the patients table

insert into patient (date, patientID, pname, age, 
weight, gender, location, phone_number, disease, doctorname,doctorID)
values ('2019-06-15','AP2021','Sarath','67','76','male','chennai','5462829','Cardiac','mohan','21')

insert into patient (date, patientID, pname, age, 
weight, gender, location, phone_number, disease, doctorname,doctorID)
values ('2019-02-19','AP2022','john','62','80','male','Bangalore','1234731','cancer','suraj','22')

insert into patient (date, patientID, pname, age, 
weight, gender, location, phone_number, disease, doctorname,doctorID)
values ('2018-01-08','AP2023','henry','45','65','male','kerala','9028320','live','mehta','23')

insert into patient (date, patientID, pname, age, 
weight, gender, location, phone_number, disease, doctorname,doctorID)
values ('2020-02-20','AP2024','carl','56','72','female','mumbai','95678543','ashtama','kartik','24')

insert into patient (date, patientID, pname, age, 
weight, gender, location, phone_number, disease, doctorname,doctorID)
values ('2017-09-15','AP2025','shikar','51','71','male','delhi','1234567','Cardiac','mohan','21')

insert into patient (date, patientID, pname, age, 
weight, gender, location, phone_number, disease, doctorname,doctorID)
values ('2018-07-22','AP202','piyush','47','59','male','haryana','9843234','cancer','suraj','22')

insert into patient (date, patientID, pname, age, 
weight, gender, location, phone_number, disease, doctorname,doctorID)
values ('2017-03-25','AP2027','stipen','69','55','male','gujrat','3435678','live','mehta','23')

insert into patient (date, patientID, pname, age, 
weight, gender, location, phone_number, disease, doctorname,doctorID)
values ('2019-04-22','AP2028','aaron','75','53','male','bangalore','3435678','ashtama','kartik','24')

#3. Write a query to display the total number of patients in the table

select count(*) as Total_number_of_patient from patient;

#4. Write a query to display the patient ID, patient name, gender, and disease of the oldest (age) patient

select patientID, pname, gender, disease, max(age) as maximum_age from patient;

#5. Write a query to display  with the current date.

select patientID,pname,NOW() as currentdate from patient;

# 6. Write a query to display the old patient name and new patient name in uppercase

select pname as old_patient, upper(pname) as new_patient from patient;

/*7. Write a query to display the patients' names along with the total number of 
characters in their name*/

select pname, length(pname) from patient;

# 8. Write a query to display the gender of the patient as M or F along with the patient's name

select pname,mid(gender,1,1) as Gender from patient;

#9.Write a query to combine the patient's name and doctor's name in a new column

select pname,doctorname,concat(pname,doctorname) as patient_doctor_name from patient;

/*10.Write a query to display the patients’ age along with the logarithmic value 
(base 10) of their age*/

select age,log10(age) as log_age from patient;

#11.Write a query to extract the year for a given date and place it in a separate column

select*,year(date) as Year from patient;

/*12.Write a query to check the patient’s name and doctor’s name are similar and 
display NULL, else return the patient’s name*/

select nullif(pname,doctorname) from patient;

/*13.Write a query to check if a patient’s age is greater than 40 and display Yes if it is and No 
if it isn't*/

select age,if(age>40,'Yes','No') as Age_greater_than_40_yes_no from patient;

#14.Write a query to display duplicate entries in the doctor name column

select  doctorname,count(*) occurences from patient  
group by doctorname having count(*)>1;



