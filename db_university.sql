-- Creo il database
CREATE DATABASE IF NOT EXISTS db_university_schema;
USE db_university_schema;

-- Creo la tabella departments
CREATE TABLE departments (
    name VARCHAR(255) NOT NULL,
    addres VARCHAR(255) NOT NULL,
    phone INT,
    email VARCHAR(255) NOT NULL,
    website VARCHAR (255) NOT NULL,
    head_of_deparments VARCHAR(255) NOT NULL,
    PRIMARY KEY(ID)
);


-- Creo la tabella degrees
CREATE TABLE degrees (
    name VARCHAR(255) NOT NULL,
    _level INT NOT NULL,
    addres VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    website VARCHAR (255) NOT NULL,
    PRIMARY KEY(id)
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);


-- Creo la tabella students
CREATE TABLE students (
    name VARCHAR(255) NOT NULL,
    surname VARCHAR(255) NOT NULL,
    date_of_birth DATE ,
    fiscal_code FLOAT,
    enrolment_date DATE,
    registration_number INT,
    email VARCHAR(255) NOT NULL,
    PRIMARY KEY(ID)
    FOREIGN KEY (degree_id) REFERENCES degrees(degree_id)
);

-- Creo la tabella teachers
CREATE TABLE teachers(
    date_exams DATE ,
    hour_exams TIME , 
    location VARCHAR (255) NOT NULL,
    address VARCHAR (255) NOT NULL,
    PRIMARY KEY(ID)
    FOREIGN KEY (course_id) REFERENCES course(course_id)
    );
   
   -- Creo la tabella courses
CREATE TABLE courses(
    name VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    period DATE ,
    year_courses YEAR,
    cfu SMALLINT,
    website VARCHAR (255) NOT NULL,
    PRIMARY KEY(ID)
    FOREIGN KEY (degree_id) REFERENCES degrees (degree_id)
    ); 
   
-- Creo la tabella teachers
CREATE TABLE departments (
    name VARCHAR(255) NOT NULL,
    addres VARCHAR(255) NOT NULL,
    phone INT,
    email VARCHAR(255) NOT NULL,
    office_address VARCHAR(255)NOT NULL,
    office_number INT,
    PRIMARY KEY(ID)
);

-- Inserisco i  dati 
INSERT INTO departments (name,address,phone,email,website,head_of_department) 
VALUES ('Itis Galvani','Via Monte 2','3770990011','www.itisgalvani@scuola.it','www.','Lara Croft');



   
