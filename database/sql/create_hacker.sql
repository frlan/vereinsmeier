DROP TABLE hacker;

CREATE TABLE hacker (
    id serial NOT NULL,
    member_since date, 
    member_till date CHECK(member_till >= member_since),
    deleted boolean,
    created_ts date,
    updated_ts date,
    deleted_ts date
);

ALTER TABLE public.hacker OWNER TO postgres;

ALTER TABLE ONLY hacker
    ADD CONSTRAINT hacker_id PRIMARY KEY (id);
