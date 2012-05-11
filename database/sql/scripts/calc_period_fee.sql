-- A script to generate a list of monthly amount to be paid by 
-- a member on period starting with date used inside query

SELECT hacker, '2012-05-01', fee_groups.fee, 'Verrechnung Monatsbeitrag', 'Generiert' 
FROM fee, fee_groups 
WHERE 
fee.fee_group = fee_groups.id
and 
	('2012-05-01' between fee.valid_from and fee.valid_to 
	or fee.valid_to ISNULL);
