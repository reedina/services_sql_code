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
 name varchar(200),
 environment_id integer,
 deletion_time timestamp
);


insert into sbm_environment_instances (name, environment_id, deletion_time) values ('mikerap',1,'2017-12-12 17:00:00');


ALTER TABLE sbm_environment_instances ADD COLUMN team_id integer;
