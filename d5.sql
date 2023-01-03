select * from orders as o
left join orders_items as oi on (oi.orderid = o.orderid) 
left join customers as c on (o.customerid = c.customerid)
where oi.sku in (select sku from products where "desc" like '%Cat Food%')
and citystatezip like 'Queens Village%'
order by phone;
-- there is only one woman!
