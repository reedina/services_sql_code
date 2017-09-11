CREATE TABLE IF NOT EXISTS sbm_environments (
 id serial primary key,
 name varchar(200),
 type varchar(200),
 description varchar(200),
 unique(name,type)
);


CREATE TABLE IF NOT EXISTS sbm_environment_instances (
 id serial primary key,
 environment_id integer,
 expiration_string varchar(200),
 expiration_time bigint
);
