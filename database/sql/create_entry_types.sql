CREATE TABLE entry_types(
    id serial PRIMARY KEY,
    name character varying(100),
    deleted boolean DEFAULT false,
    created_ts timestamp DEFAULT now(),
    updated_ts timestamp,
    deleted_ts timestamp
);
