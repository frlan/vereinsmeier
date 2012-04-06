DROP TABLE fee_groups;

CREATE TABLE fee_groups (
    id serial NOT NULL,
    role_name character varying(50),
    fee money CHECK (fee >= 0::money),
    valid_from date,
    valid_to date,
    deleted boolean,
    created_ts date,
    updated_ts date,
    deleted_ts date
);

ALTER TABLE public.fee_groups OWNER TO postgres;

ALTER TABLE ONLY fee_groups
    ADD CONSTRAINT fee_groups_id PRIMARY KEY (id);
