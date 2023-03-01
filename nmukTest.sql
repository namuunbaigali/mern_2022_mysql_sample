INSERT INTO
    employees (
        emp_no,
        birth_date,
        last_name,
        first_name,
        gender,
        hire_date
    )
VALUES (
        1,
        '1995-01-01',
        'dulguun',
        ' mygmarjaw ',
        'm',
        '2020-01-09'
    ), (
        2,
        '1999-01-01',
        'baljka',
        ' jandaw ',
        'm',
        '2020-02-09'
    ), (
        3,
        '1995-06-01',
        'ganbold',
        ' uyer ',
        'm',
        '2020-03-09'
    ), (
        4,
        '2004-05-01',
        'amur',
        ' battsolmon ',
        'm',
        '2020-03-09'
    );

update employees
set
    birth_date = '1992-01-01',
    first_name = 'mygmar',
    last_name = 'backend duk',
    gender = 'f',
    hire_date = '2022-02-02'
where emp_no = 1;

select first_name, last_name
from employees
where birth_date = (
        select
            max(birth_date)
        from employees
    );

select last_name, first_name
from employees
order by birth_date desc
limit 1;

select gender count(*) from employees group by gender;

select count(*)
from employees
where
    first_name like 'A%'
    and last_name like ' A%';

select count(first_name) from employees where first_name='Georgi';

select count(hire_date)
from employees
where hire_date > '1990-12-01';

select min(salary),max(salary) from salaries;

select emp_no ,count(*) from salaries group by emp_no;

-- select emp_no ,count(*) from salaries desc limit 20;

select avg(salary)
from salaries
where
    from_date between '1990-01-01' and '2000-01-01';

select *
from salaries
where
    from_date between '1990-01-01' and '2000-01-01'
limit 20;

select sum(salary)
from salaries
where
    from_date between '1990-01-01' and '1990-12-31';

select
    emp_no,
    sum(salary) as total_salaries
from salaries
group by emp_no
order by total_salaries desc
limit 5;

INSERT INTO departments VALUES ( 'd010', 'Security' );

CREATE TABLE
    user(
        id INT UNSIGNED AUTO_INCREMENT,
        name varchar (255),
        slug VARCHAR(255) UNIQUE,
        description text,
        productCount int UNSIGNED DEFAULT 0,
        createdAt datetime,
        primary key(id)
    );

DROP table product;

INSERT INTO
    category (name, slug, createdAt) value('shoes', 'shoes', now());

ALTER TABLE category DROP COLUMN description;

ALTER TABLE category ADD COLUMN imageUrl varchar(500);

ALTER TABLE category ADD COLUMN imageUrl varchar(500) AFTER slug;

ALTER TABLE category DROP COLUMN imageUrl;

ALTER TABLE category modify COLUMN imageUrl varchar(200);

alter TABLE
    category CHANGE COLUMN imageUrl imageAddress varchar(200);