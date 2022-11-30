# :large_orange_diamond: [SQL HW №1](https://github.com/EvgeneyKEO/SQL/blob/befb65d1b750bdb1b0be80eb8cfcc70c2d0da563/HW_1.sql)
1. Вывести все поля и все строки.
```
select * from students;
```

2. Вывести всех студентов в таблице
```
select name from students;
```

3. Вывести только Id пользователей
```
select id from students;
```

4. Вывести только имя пользователей
```
select name from students;
```

5. Вывести только email пользователей
```
select email from students;
```

6. Вывести имя и email пользователей
```
select name, email from students;
```

7. Вывести id, имя, email и дату создания пользователей
 ```
 select id, name, email, created_on from students;
 ```

8.Вывести пользователей где password 12333
```
select * from students
where password = '12333';
```

9.Вывести пользователей которые были созданы 2021-03-26 00:00:00
```
select * from students
where created_on = '2021-03-26 00:00:00';
```

10.Вывести пользователей где в имени есть слово Анна
```
select * from students
where name like '%Anna%';
```

11. Вывести пользователей где в имени в конце есть 8
```
select * from students
where name like '%8';
```

12.Вывести пользователей где в имени в есть буква а
```
select * from students
where name like '%a%';
```

13.Вывести пользователей которые были созданы 2021-07-12 00:00:00
```
select * from students
where created_on = '2021-07-12 00:00:00';
```

14.Вывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313
```
select * from students
where created_on = '2021-07-12 00:00:00' and password = '1m313';
```

15.Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть слово Andrey
```
select * from students
where created_on = '2021-07-12 00:00:00' and name like '%Andrey%';
```

16.Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра 8
```
select * from students
where created_on = '2021-07-12 00:00:00' and name like '%8%';
```

17. Вывести пользователя у которых id равен 110
```
select * from students
where id = 110;
```

18. Вывести пользователя у которых id равен 153
```
select * from students
where id = 153;
```

19. Вывести пользователя у которых id больше 140
```
select * from students
where id > 140;
```

20. Вывести пользователя у которых id меньше 130
```
select * from students
where id < 130;
```

21. Вывести пользователя у которых id меньше 127 или больше 188
```
select * from students
where id < 127 or id > 188;
```

22. Вывести пользователя у которых id меньше либо равно 137
```
select * from students
where id <= 137;
```

23. Вывести пользователя у которых id больше либо равно 137
```
select * from students
where id >= 137;
```

24. Вывести пользователя у которых id больше 180 но меньше 190
```
select * from students
where id > 180 and id < 190;
```

25. Вывести пользователя у которых id между 180 и 190
```
select * from students
where id between 180 and 190;
```

26. Вывести пользователей где password равен 12333, 1m313, 123313
```
select * from students
where password in ('12333','1m313', '123313');
```

27.Вывести пользователей где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
```
select * from students
where created_on in ('2020-10-03 00:00:00','2021-05-19 00:00:00', '2021-03-26 00:00:00');
```

28. Вывести минимальный id
```
select min(id) as min_id from students;
```

29. Вывести максимальный id.
```
select max(id) as max_id from students;
```

30. Вывести количество пользователей
```
select count(id) from students;
```

31. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку возрастания даты добавления пользоватлеля.
```
select id, name, created_on from students
order by created_on;
```

32. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку убывания даты добавления пользоватлеля.
```
select id, name, created_on from students
order by created_on desc;
```
_____________________________
# :large_orange_diamond: [SQL HW №2](https://github.com/EvgeneyKEO/SQL/blob/fccc9f49f51b4d38667fe7d2cbddf79dd0e17434/HW_2.sql)

1.Создать таблицу employees
id. serial,  primary key,
employee_name. Varchar(50), not null

```
create table employees(
	id serial primary key,
	employee_name varchar(50) not null);
```

2.Наполнить таблицу employee 70 строками.
```
insert into employees (employee_name)
	values  ('Irene_Ryan'),
		('Christian_Howell'),
		('Helen_Bowers')
   		('insert data');
 ```
 
3. Создать таблицу salary
id. Serial  primary key,
monthly_salary. Int, not null
```
create table salary(
	id serial primary key,
	monthly_salary int not null);
```

4.Наполнить таблицу salary 15 строками
```
insert into salary (monthly_salary)
	values  (1000),
		(1100),
		(insert data);
```

5. Создать таблицу employee_salary 
id. Serial  primary key, 
employee_id. Int, not null, unique
salary_id. Int, not null
```
create table employee_salary(
	id serial primary key,
	employee_id int not null,
	salary_id int not null,
	foreign key (employee_id)
		references employees (id),
	foreign key (salary_id)
		references salary (id));
```

6.Наполнить таблицу employee_salary 40 строками: в 10 строк из 40 вставить несуществующие employee_id - будет ошибка, т.к. добавленных 10 значений нет в таблице employee
```
insert into employee_salary (employee_id, salary_id)
	values  (3,7),
		(1,4),
		(5,9),
		(40,13),
		(23,4),
		(insert data, insert data); 
```

7. Создать таблицу roles
id. Serial  primary key,
role_name. int, not null, unique
```
create table roles(
	id serial primary key,
	role_name int not null unique);
```

8.Поменять тип столба role_name с int на varchar(30)
```
alter table roles
alter column role_name type varchar(30);
```

9. Наполнить таблицу roles 20 строками
```
insert into roles (role_name)
	values  ('Junior Python developer'),
		('Middle Python developer'),
		('insert data');
```

10.Создать таблицу roles_employee
```
create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees (id),
	foreign key (role_id)
		references roles (id));
```

11.Наполнить таблицу roles_employee 40 строками
```
insert into roles_employee (employee_id, role_id)
	values  (7,2),
		(20,4),
		(3,9),
		(insert data, insert data),
```
