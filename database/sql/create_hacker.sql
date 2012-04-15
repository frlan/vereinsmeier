DROP TABLE hacker;

CREATE TABLE hacker (
    id serial PRIMARY KEY,
    member_since date NOT NULL,
    member_till date CHECK(member_till >= member_since),
    deleted boolean DEFAULT false,
    created_ts timestamp DEFAULT now(),
    updated_ts timestamp,
    deleted_ts timestamp
);
