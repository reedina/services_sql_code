CREATE DATABASE  sre_toolkit;

\c sre_toolkit

CREATE TABLE IF NOT EXISTS Teams (
 id serial primary key,
 name varchar(200)
);

CREATE TABLE IF NOT EXISTS Projects (
 id serial primary key,
 name varchar(200),
 team_id integer
);

CREATE TABLE IF NOT EXISTS Users (
 id serial primary key,
 first_name varchar(200),
 last_name varchar(200),
 email varchar(200),
 team_id integer
);

