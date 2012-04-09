#!/bin/sh

psql -h 127.0.0.1 -U postgres -f create_database.sql
psql -h 127.0.0.1 -U postgres vereinsmeier -f create_hacker.sql
psql -h 127.0.0.1 -U postgres vereinsmeier -f create_fee_groups.sql
psql -h 127.0.0.1 -U postgres vereinsmeier -f create_fee.sql
psql -h 127.0.0.1 -U postgres vereinsmeier -f create_entry.sql
psql -h 127.0.0.1 -U postgres vereinsmeier -f create_hacker_entry.sql
psql -h 127.0.0.1 -U postgres vereinsmeier -f create_hacker_data.sql

# Adding PL/Python to database
createlang -U postgres -h 127.0.0.1 plpythonu vereinsmeier
