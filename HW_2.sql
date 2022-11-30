--1.Создать таблицу employees
--id. serial,  primary key,
--employee_name. Varchar(50), not null

create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

--2.Наполнить таблицу employee 70 строками.
insert into employees (employee_name)
	values  ('Irene_Ryan'),
			('Christian_Howell'),
			('Helen_Bowers'),
			('Shelia_Gray'),
			('Stephen_Porter'),
			('Sherry_Rowe'),
			('Darin_Fleming'),
			('Elisa_Stevenson'),
			('Nick_Sutton'),
			('Edgar_Herrera'),
			('Elmer_Perez'),
			('Francis_Carpenter'),
			('Dominic_Guerrero'),
			('Ed_Fox'),
			('Sally_Wright'),
			('Lila_Cummings'),
			('Ralph_Graves'),
			('Jessica_Hunt'),
			('Grace_Neal'),
			('Anne_Kennedy'),
			('Melinda_Newton'),
			('Homer_Palmer'),
			('Veronica_Todd'),
			('Sylvia_Armstrong'),
			('Sidney_Hanson'),
			('Stella_Burton'),
			('Eric_Bryan'),
			('Teri_Chandler'),
			('Robin_Tate'),
			('Ruby_Sharp'),
			('Pablo_Robbins'),
			('Christy_Ingram'),
			('Lindsay_Goodman'),
			('Stewart_Jenkins'),
			('Silvia_Sanchez'),
			('Luz_Wood'),
			('Yvonne_Vasquez'),
			('Doug_Richards'),
			('Natasha_Edwards'),
			('Connie_Thornton'),
			('Annette_Rodriguez'),
			('Latoya_Fowler'),
			('Jennie_Manning'),
			('Mindy_Owens'),
			('Viola_Hardy'),
			('Lorenzo_Mann'),
			('Tanya_Meyer'),
			('Jay_Gibbs'),
			('Ignacio_Copeland'),
			('Levi_Gilbert'),
			('Louise_Saunders'),
			('Audrey_Holland'),
			('Brent_Snyder'),
			('Jeannette_Fuller'),
			('Marcus_Love'),
			('Steven_Aguilar'),
			('Alfredo_Craig'),
			('Nettie_Glover'),
			('Lola_Gibson'),
			('Lorene_Moody'),
			('Anthony_Mack'),
			('Mack_Harris'),
			('Ana_Lawson'),
			('Claude_Clayton'),
			('Alejandro_Padilla'),
			('Zachary_Wheeler'),
			('Miranda_Lynch'),
			('Eunice_Cohen'),
			('Randal_Simmons'),
			('Armando_Olson');
		
--3. Создать таблицу salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null
create table salary(
	id serial primary key,
	monthly_salary int not null
);

--4.Наполнить таблицу salary 15 строками
insert into salary (monthly_salary)
	values  (1000),
			(1100),
			(1200),
			(1300),
			(1400),
			(1500),
			(1600),
			(1700),
			(1800),
			(1900),
			(2000),
			(2100),
			(2200),
			(2300),
			(2400),
			(2500);

--5. Создать таблицу employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null
create table employee_salary(
	id serial primary key,
	employee_id int not null,
	salary_id int not null,
	foreign key (employee_id)
		references employees (id),
	foreign key (salary_id)
		references salary (id)	
);

--6.Наполнить таблицу employee_salary 40 строками:
--в 10 строк из 40 вставить несуществующие employee_id - будет ошибка, т.к. добавленных 10 значений нет в таблице employee
insert into employee_salary (employee_id, salary_id)
	values  (3,7),
			(1,4),
			(5,9),
			(40,13),
			(23,4),
			(11,2),
			(52,10),
			(15,13),
			(26,4),
			(16,1),
			(33,7),
			(34,15),
			(20,11),
			(13,9),
			(32,2),
			(54,5),
			(9,8),
			(4,3),
			(7,1),
			(6,9),
			(17,11),
			(19,14),
			(47,13),
			(69,10),
			(42,8),
			(59,5),
			(67,10),
			(43,11),
			(62,5),
			(30,3),
			(72,8),
			(73,9),
			(74,11),
			(75,6),
			(76,9),
			(77,7),
			(78,6),
			(79,10),
			(80,12),
			(81,1);


--7. Создать таблицу roles
-- id. Serial  primary key,
-- role_name. int, not null, unique
create table roles(
	id serial primary key,
	role_name int not null unique
);

-- 8.Поменять тип столба role_name с int на varchar(30)
alter table roles
alter column role_name type varchar(30);

--9. Наполнить таблицу roles 20 строками
insert into roles (role_name)
	values  ('Junior Python developer'),
			('Middle Python developer'),
			('Senior Python developer'),
			('Junior Java developer'),
			('Middle Java developer'),
			('Senior Java developer'),
			('Junior JavaScript developer'),
			('Middle JavaScript developer'),
			('Senior JavaScript developer'),
			('Junior Manual QA engineer'),
			('Middle Manual QA engineer'),
			('Senior Manual QA engineer'),
			('Project Manager'),
			('Designer'),
			('HR'),
			('CEO'),
			('Sales manager'),
			('Junior Automation QA engineer'),
			('Middle Automation QA engineer'),
			('Senior Automation QA engineer');

--10.Создать таблицу roles_employee
create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees (id),
	foreign key (role_id)
		references roles (id)
);

--11.Наполнить таблицу roles_employee 40 строками
insert into roles_employee (employee_id, role_id)
	values  (7,2),
			(20,4),
			(3,9),
			(5,13),
			(23,4),
			(11,2),
			(10,9),
			(22,13),
			(21,3),
			(34,4),
			(6,7),
			(35,11),
			(68,12),
			(13,1),
			(32,19),
			(54,16),
			(39,11),
			(4,10),
			(2,6),
			(25,7),
			(17,3),
			(19,2),
			(47,9),
			(31,18),
			(42,19),
			(59,20),
			(67,13),
			(43,14),
			(62,16),
			(30,2),
			(33,3),
			(12,4),
			(9,5),
			(69,7),
			(37,8),
			(51,9),
			(50,11),
			(49,20),
			(29,3),
			(36,12);

		
--Выведем всю таблицу - для проверки добавления всех значений
select * from salary;
drop table salary;

select * from employees;
drop table employees;

select * from employee_salary;
drop table employee_salary;

select * from roles;
drop table roles;

select * from roles_employee;
drop table roles_employee;












