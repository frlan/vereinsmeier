CREATE TABLE entry_type(
    id serial PRIMARY KEY,
    entry integer REFERENCES entries,
    typ integer REFERENCES entry_types,
    deleted boolean DEFAULT false,
    created_ts timestamp DEFAULT now(),
    updated_ts timestamp,
    deleted_ts timestamp
);
