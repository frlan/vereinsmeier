DROP TABLE hacker;

CREATE TABLE hacker (
    id serial PRIMARY KEY,
    member_since date NOT NULL, 
    member_till date CHECK(member_till >= member_since),
    deleted boolean,
    created_ts date,
    updated_ts date,
    deleted_ts date
);
