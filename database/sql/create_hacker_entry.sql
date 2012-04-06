DROP TABLE hacker_entry;

-- Stores the connection between a financial transaction and a member 

CREATE TABLE hacker_entry (
	id SERIAL NOT NULL, 
	hacker_id integer, 
	entry_id integer
);

ALTER TABLE ONLY hacker_entry
    ADD CONSTRAINT hacker_entry_id PRIMARY KEY (id);
