DROP TABLE fee;

CREATE TABLE fee (
	id integer NOT NULL,
	hacker integer, 
	fee_group integer,
	extra_fee money,
	valid_from date,
	valid_to date,
	payment_period integer CHECK (payment_period > 1),
	deleted boolean,
    created_ts date,
    updated_ts date,
    deleted_ts date
);
	
ALTER TABLE public.fee OWNER TO postgres;

CREATE SEQUENCE fee_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER TABLE public.fee_id_seq OWNER TO postgres;

ALTER SEQUENCE fee_id_seq OWNED BY fee.id;

SELECT pg_catalog.setval('fee_id_seq', 1, true);

ALTER TABLE ONLY fee ALTER COLUMN id SET DEFAULT nextval('fee_id_seq'::regclass);

ALTER TABLE ONLY fee
    ADD CONSTRAINT fee_id PRIMARY KEY (id);
