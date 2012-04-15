DROP TABLE entries;

CREATE TABLE entries (
    id SERIAL PRIMARY KEY,
    value money,
    ref1 varchar(255),
    ref2 varchar(255),
    entry_date date,
    comment varchar(255),
    deleted boolean DEFAULT false,
    created_ts timestamp DEFAULT now(),
    updated_ts timestamp,
    deleted_ts timestamp
);