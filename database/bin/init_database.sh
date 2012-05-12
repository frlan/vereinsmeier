#!/bin/sh

psql -h 127.0.0.1 -U postgres -f ../sql/create_database.sql
psql -h 127.0.0.1 -U postgres vereinsmeier -f ../sql/create_hacker.sql
psql -h 127.0.0.1 -U postgres vereinsmeier -f ../sql/create_fee_groups.sql
psql -h 127.0.0.1 -U postgres vereinsmeier -f ../sql/create_fee.sql
psql -h 127.0.0.1 -U postgres vereinsmeier -f ../sql/create_accounting_items.sql
psql -h 127.0.0.1 -U postgres vereinsmeier -f ../sql/create_hacker_data.sql
psql -h 127.0.0.1 -U postgres vereinsmeier -f ../sql/create_account_status.sql

# Adding PL/Python to database
createlang -U postgres -h 127.0.0.1 plpythonu vereinsmeier

# Adding functions...
psql -f ../sql/create_func_period_amount.sql -U postgres -h 127.0.0.1 vereinsmeier

# Adding views
psql -f ../sql/create_views.sql -U postgres -h 127.0.0.1 vereinsmeier
