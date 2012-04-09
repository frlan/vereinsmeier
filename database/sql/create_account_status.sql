CREATE TABLE account_status(
	id serial, 
	hacker int REFERENCES hacker,
	account_amount money
);
