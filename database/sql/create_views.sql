-- Creating a view showing the current balance of each member

CREATE VIEW balance_by_member AS
SELECT 
	hacker_id, sum(amount) 
FROM accounting_items 
GROUP BY hacker_id
ORDER BY hacker_id;
