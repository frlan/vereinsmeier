-- A script to generate a list of monthly amount to be paid by 
-- a member on period starting with date used inside query
-- Replace the date by your cutt-off day of the period

SELECT 
	hacker as hackerid, 
	'2012-05-01'::date as "cutt-off-day", 
	fee_groups.fee + fee.extra_fee as amount, 
	'Verrechnung Monatsbeitrag' as description, 
	'Generiert' as comment
FROM fee, fee_groups 
WHERE 
fee.fee_group = fee_groups.id
and 
	('2012-05-01' between fee.valid_from and fee.valid_to 
	or fee.valid_to ISNULL);
