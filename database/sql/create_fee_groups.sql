--
-- Name: fee_groups; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE fee_groups (
    id integer NOT NULL,
    role_name character varying(50),
    fee money,
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


--
-- Name: fee_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('fee_groups_id_seq', 2, true);
