DROP TABLE hacker;

CREATE TABLE hacker (
    id integer NOT NULL,
    member_since date, 
    member_till date CHECK(member_till >= member_since),
    deleted boolean,
    created_ts date,
    updated_ts date,
    deleted_ts date
);

ALTER TABLE public.hacker OWNER TO postgres;

CREATE SEQUENCE hacker_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER TABLE public.hacker_id_seq OWNER TO postgres;

ALTER SEQUENCE hacker_id_seq OWNED BY hacker.id;

ALTER TABLE ONLY hacker ALTER COLUMN id SET DEFAULT nextval('hacker_id_seq'::regclass);

ALTER TABLE ONLY hacker
    ADD CONSTRAINT hacker_id PRIMARY KEY (id);
