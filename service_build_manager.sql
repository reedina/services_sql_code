CREATE TABLE IF NOT EXISTS sbm_environments (
 id serial primary key,
 name varchar(200),
 type varchar(200),
 description varchar(200),
 unique(name,type)
);
