DROP TABLE fee;

CREATE TABLE fee (
	id serial PRIMARY KEY,
	hacker integer REFERENCES hacker ON DELETE CASCADE, 
	fee_group integer REFERENCES fee_groups ON DELETE SET NULL,
	extra_fee money CHECK (extra_fee >= 0::money),
	valid_from date,
	valid_to date,
	payment_period integer CHECK (payment_period >= 1),
	deleted boolean,
    created_ts date,
    updated_ts date,
    deleted_ts date
);
