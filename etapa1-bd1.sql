-- Francisca Marilia de Oliveira Rodrigues
-- 555093

-- Q1) Importar o banco de dados repassado ao longo das aulas em MySQL
create database BD1;
use BD1;
show tables;

-- Q2) Qual o nome dos departamentos da empresa?
select * from department; 

-- Q3) Quantos empregados tem o departamento de pesquisa ("research")?
select * from employee where Dno = 5;

-- Q4) Incluir um novo departamento denominado "datascience" com Dno =7;
insert into department ( Dname, Dnumber, Mgr_ssn) 
values ('DataScience', 7, '888665555');

-- Q5) Incluir pelo menos dois cientistas de dados no novo departamento com os atributos básicos;
select * from employee;
insert into employee( Fname, Minit, Lname, Ssn, Bdate,
 Address, Sex, Salary, Super_ssn, Dno)
 values ( 'Simon', 'O', 'Willians', '109874098', '1997-09-22',
 '213 Austin, Fox TX', 'M', '17000', '987654321', 7);
insert into employee ( Fname, Minit, Lname, Ssn, Bdate,
 Address, Sex, Salary, Super_ssn, Dno)
 values ('Karen', 'L', 'Miller', '758342093', '1986-01-10', 
 '245 Detroid, Rivera MI', 'F', '18000', '123456789', 7);
 
-- Q6) Aumentar o salário de todos os empregados em 23.5% do valor atual;
update employee set salary = salary * 1.235 where Dno = 1;
update employee set salary = salary * 1.235 where Dno = 4;
update employee set salary = salary * 1.235 where Dno = 5;
update employee set salary = salary * 1.235 where Dno = 7;
select * from employee;

-- Q7) Mudar a endereço de residência ("Address") do departamento 4 
-- ("Administration") para Itapajé, CE;
select * from employee where Dno = 4;
update employee set  address = 'Itapajé, CE' where Dno = 4;

 
 
 






