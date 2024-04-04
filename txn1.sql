-- Determine isolation level:
SHOW transaction_isolation;

SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;

start transaction;

select * from stock;

select * from stock where id = 1;

select * from stock where id = 2;

select * from stock where id = 1 for update;

select * from stock where id = 2 for update;

select * from stock where id = 2 for share;

update stock set qty = qty + 1 where id = 2;

commit;
rollback;
end;