DROP TABLE hacker_data;

CREATE TABLE hacker_data (
	id serial PRIMARY KEY,
	hacker integer REFERENCES hacker ON DELETE CASCADE,
	name character varying(100),
    vorname character varying(100),
    deleted boolean DEFAULT false,
    created_ts date DEFAULT now(),
    updated_ts date,
    deleted_ts date
);
