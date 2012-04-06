DROP TABLE fee_groups;

CREATE TABLE fee_groups (
    id integer NOT NULL,
    role_name character varying(50),
    fee money CHECK (fee >= 0::money),
    created_ts date,
    updated_ts date,
    deleted_ts date,
    deleted boolean,
    valid_from date,
    valid_to date
);

ALTER TABLE public.fee_groups OWNER TO postgres;

--
-- Name: fee_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE fee_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fee_groups_id_seq OWNER TO postgres;

--
-- Name: fee_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE fee_groups_id_seq OWNED BY fee_groups.id;

ALTER TABLE ONLY fee_groups
    ADD CONSTRAINT fee_groups_id PRIMARY KEY (id);
