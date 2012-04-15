DROP TABLE fee_groups;

CREATE TABLE fee_groups (
    id serial PRIMARY KEY,
    role_name character varying(50) NOT NULL,
    fee money CHECK (fee >= 0::money),
    valid_from date,
    valid_to date,
    deleted boolean DEFAULT false,
    created_ts date DEFAULT now(),
    updated_ts date,
    deleted_ts date
);
