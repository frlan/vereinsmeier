#!/bin/sh

psql -h 127.0.0.1 -U postgres vereinsmeier -f create_hacker.sql
psql -h 127.0.0.1 -U postgres vereinsmeier -f create_fee_groups.sql
psql -h 127.0.0.1 -U postgres vereinsmeier -f create_fee.sql
psql -h 127.0.0.1 -U postgres vereinsmeier -f create_entry.sql
psql -h 127.0.0.1 -U postgres vereinsmeier -f create_hacker_entry.sql
