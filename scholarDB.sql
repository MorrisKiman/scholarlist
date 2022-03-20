create database scholar;

use scholar;

create table links(
	id int(12) not null primary key auto_increment,
	link_url varchar(1000) not null,
	status int(1) not null,
	comments varchar(2000)

);

ALTER TABLE links CHANGE status status VARCHAR(5) NOT NULL DEFAULT 'NO';
ALTER TABLE links ADD UNIQUE(link_url);