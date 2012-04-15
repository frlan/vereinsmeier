CREATE TABLE account_status(
    id serial,
    hacker int REFERENCES hacker ON DELETE CASCADE,
    account_amount money
);
