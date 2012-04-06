DROP TABLE hacker_data;

CREATE TABLE hacker_data (
	id serial NOT NULL,
	hacker integer REFERENCES hacker,
	name character varying(100),
    vorname character varying(100),
    deleted boolean,
    created_ts date,
    updated_ts date,
    deleted_ts date
);

ALTER TABLE ONLY hacker_data
    ADD CONSTRAINT hacker_data_id PRIMARY KEY (id);
