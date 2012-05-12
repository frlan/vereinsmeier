-- Creates a function which is generating a list of member id and
-- the amount they have to pay.
-- It takes over the cutoffday which is controlling who needs to pay 
-- and which fee is calculated

-- Create a type which is used.
CREATE TYPE payment_values AS (
  hackerid integer,
  cutoffday date,
  amount money
);


DROP FUNCTION period_amount(cutoffday date);
CREATE OR REPLACE FUNCTION period_amount(cutoffday date)
  RETURNS SETOF payment_values AS
$BODY$
	date_plan = plpy.prepare("""
		SELECT hacker as hackerid, 
			$1 as cutoffday, 
			fee_groups.fee + fee.extra_fee as amount 
		FROM fee, fee_groups 
		WHERE 
			fee.fee_group = fee_groups.id 
			and ( $1 between fee.valid_from and fee.valid_to 
				or fee.valid_to ISNULL);""", ["date"])
	date_rs = plpy.execute(date_plan,[cutoffday])
	return date_rs
$BODY$
  LANGUAGE plpythonu VOLATILE;
