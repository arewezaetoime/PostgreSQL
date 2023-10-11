create table mountains(
	id serial primary key,
	name varchar(50)
);

create table peaks(
	id serial primary key,
	name varchar(50),
	mountain_id int,
	constraint fk_mountain_id
		FOREIGN key (mountain_id)
			references mountains(id)
				on delete cascade
);