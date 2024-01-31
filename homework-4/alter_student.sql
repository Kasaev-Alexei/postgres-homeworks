-- 1. Создать таблицу student с полями student_id serial, first_name varchar, last_name varchar, birthday date, phone varchar
CREATE TABLE student
(
student_id serial,
first_name varchar,
last_name varchar,
birthday date,
phone varchar
);

-- 2. Добавить в таблицу student колонку middle_name varchar
ALTER TABLE student ADD COLUMN middle_name;

-- 3. Удалить колонку middle_name
ALTER TABLE student DROP COLUMN middle_name;

-- 4. Переименовать колонку birthday в birth_date
ALTER TABLE student RENAME COLUMN birthday TO birth_date;

-- 5. Изменить тип данных колонки phone на varchar(32)
ALTER TABLE student ALTER COLUMN phone SET DATE TYPE varchar(32);

-- 6. Вставить три любых записи с автогенерацией идентификатора
INSERT INFO student(first_name, last_name, birth_date, phone) VALUES
('Alexei', 'Kasaev', '1994-02-09', '010-5555-5555'),
('Vladimir', 'Shabeta', '1992-09-16', '010-6666-6666'),
('Alexandra', 'Gulnova', '1995-10-13', '010-7777-7777');
-- 7. Удалить все данные из таблицы со сбросом идентификатор в исходное состояние
TRUNCATE TABLE student RESTART IDENTITY;
