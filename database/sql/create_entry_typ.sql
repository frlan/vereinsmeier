CREATE TABLE entry_type(
    id serial PRIMARY KEY,
    entry integer REFERENCES entries,
    typ integer REFERENCES entry_types
);
