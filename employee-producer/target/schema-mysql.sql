CREATE DATABASE IF NOT EXISTS bootdb;
USE bootdb;
CREATE TABLE IF NOT EXISTS employee (
  empId VARCHAR(10) NOT NULL,
  empName VARCHAR(100) NOT NULL
);

insert into employee values(1, "rakesh");
insert into employee values(2, "pooja");