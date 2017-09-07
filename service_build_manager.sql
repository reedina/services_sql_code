CREATE TABLE IF NOT EXISTS sbm_environments (
 id serial primary key,
 name varchar(200) unique,
 description varchar(200)
);

-- One Environement to Many Environment Types

CREATE TABLE IF NOT EXISTS sbm_environment_types (
 id serial primary key,
 name varchar(200),
 sbm_environment_id int,
 unique(name, sbm_environment_id)
);
