DROP TABLE hacker_entry;

-- Stores the connection between a financial transaction and a member 

CREATE TABLE hacker_entry (
	id SERIAL PRIMARY KEY, 
	hacker_id integer REFERENCES hacker ON DELETE CASCADE, 
	entry_id integer REFERENCES entry ON DELETE CASCADE
);

