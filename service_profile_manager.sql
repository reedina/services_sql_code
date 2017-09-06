CREATE DATABASE  sre_toolkit;

\c sre_toolkit

CREATE TABLE IF NOT EXISTS spm_teams (
 id serial primary key,
 name varchar(200)
);

CREATE TABLE IF NOT EXISTS spm_projects (
 id serial primary key,
 name varchar(200) unique,
 team_id integer
);

CREATE TABLE IF NOT EXISTS spm_users (
 id serial primary key,
 first_name varchar(200),
 last_name varchar(200),
 email varchar(200) unique,
 team_id integer
);

