DROP TABLE fee_groups;

CREATE TABLE fee_groups (
    id serial PRIMARY KEY,
    role_name character varying(50) NOT NULL,
    fee money CHECK (fee >= 0::money),
    valid_from date NOT NULL DEFAULT now(),
    valid_to date,
    deleted boolean DEFAULT false,
    created_ts timestamp DEFAULT now(),
    updated_ts timestamp,
    deleted_ts timestamp
);
