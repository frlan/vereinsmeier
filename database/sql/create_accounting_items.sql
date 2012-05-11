DROP TABLE accounting_items;

CREATE TABLE accounting_items (
    id SERIAL PRIMARY KEY,
    hacker_id integer REFERENCES hacker ON DELETE CASCADE,
    booking_date date,
    amount money,
    description varchar(255),
    comment varchar(255),
    deleted boolean DEFAULT false,
    created_ts timestamp DEFAULT now(),
    updated_ts timestamp,
    deleted_ts timestamp
);
