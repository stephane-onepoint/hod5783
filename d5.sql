select *, substr(c.name,1,1) f, SUBSTR(c.name, INSTR(c.name, ' ')+1,1) l from orders as o
left join orders_items as oi on (oi.orderid = o.orderid) 
left join customers as c on (o.customerid = c.customerid)
where oi.sku in (select sku from products where desc like '%cat food%')
and citystatezip like 'Queens Village%'
order by phone;
-- there is only one woman!
