-- tạo csdl --
create database librarydb;

-- tạo schema --
create schema library;

-- tạo bảng trong schema library --
create table library.books (
book_id int generated always as identity primary key, -- hoặc book_id serial primary key --
title varchar(100) not null,
author varchar(50) not null,
published_year int,
price real
);


-- xem hết các database hiện có --
select datname from pg_database;

-- xem các schema trong database --
select schema_name
from information_schema.schemata;

-- xem cấu trúc bảng --
select column_name,
is_identity,
data_type,
is_nullable,
column_default
from information_schema.columns
where table_name = 'books';