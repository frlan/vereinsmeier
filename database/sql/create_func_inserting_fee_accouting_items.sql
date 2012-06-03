-- Adding a function which is inserting single accouting items for each 
-- hacker based on given cur off day. Description and comment are free 
-- to choose.

DROP FUNCTION insert_fee_accouting_items ( 
	description text, 
	comment text,
	cutoffday date);
	
CREATE OR REPLACE FUNCTION insert_fee_accouting_items(
	description text, 
	comment text,
	cutoffday date)
RETURNS int AS
$BODY$
	date_plan = plpy.prepare("""
		INSERT INTO "accounting_items" 
			(hacker_id, 
			 booking_date, 
			 amount, 
			 description, 
			 comment)
		SELECT 
			hackerid as "hacker_id", 
			cutoffday as "booking_date", 
			amount as "amount",
			$1 as description,
			$2 as comment
		FROM period_amount($3);""", ["text","text","date"])
	plpy.execute(date_plan,[description, comment, cutoffday])
	return None
$BODY$
  LANGUAGE plpythonu VOLATILE;
