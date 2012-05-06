DROP TABLE fee;

CREATE TABLE fee (
    id serial PRIMARY KEY,
    hacker integer REFERENCES hacker ON DELETE CASCADE,
    fee_group integer REFERENCES fee_groups ON DELETE SET NULL,
    extra_fee money DEFAULT 0 CHECK (extra_fee >= 0::money),
    valid_from date NOT NULL,
    valid_to date,
    deleted boolean DEFAULT false,
    created_ts timestamp DEFAULT now(),
    updated_ts timestamp,
    deleted_ts timestamp,
    CHECK (valid_from <= valid_to)
);
