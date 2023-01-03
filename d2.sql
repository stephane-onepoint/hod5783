select *, substr(c.name,1,1) f, SUBSTR(c.name, INSTR(c.name, ' ')+1,1) l from orders as o
left join orders_items as oi on (oi.orderid = o.orderid) 
left join customers as c on (o.customerid = c.customerid)
where oi.sku in (select sku from products where desc like '%bagel%')
and f == 'J'
and l == 'D';
-- call them all !
