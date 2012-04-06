DROP TABLE fee;

CREATE TABLE fee (
	id serial NOT NULL,
	hacker integer, 
	fee_group integer,
	extra_fee money CHECK ("extra_fee" >= 0::money),
	valid_from date,
	valid_to date,
	payment_period integer CHECK (payment_period >= 1),
	deleted boolean,
    created_ts date,
    updated_ts date,
    deleted_ts date
);

ALTER TABLE ONLY fee
    ADD CONSTRAINT fee_id PRIMARY KEY (id);
