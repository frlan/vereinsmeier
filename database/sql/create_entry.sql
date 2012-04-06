DROP TABLE entry;

CREATE TABLE entry (
	id SERIAL PRIMARY KEY,
	value money,
	ref1 varchar(255),
	ref2 varchar(255),
	entry_date date,
	hacker integer, 
	comment varchar(255),
	deleted boolean,
    created_ts date,
    updated_ts date,
    deleted_ts date
);
