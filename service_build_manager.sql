CREATE TYPE env_type AS ENUM ('qa', 'staging', 'production');
CREATE TABLE IF NOT EXISTS sbm_environments (
 id serial primary key,
 name varchar(200),
 type env_type,
 url varchar(200),
 unique(name,type)
);

insert into sbm_environments(name, type, url) values ('test01', 'qa', 'http://localhost:8001/api/test');

CREATE TABLE IF NOT EXISTS sbm_environment_instances (
 id serial primary key,
 environment_id integer,
 expiration_string varchar(200),
 expiration_time bigint
);
