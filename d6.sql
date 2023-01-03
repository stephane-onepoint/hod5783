-- had to fix column type for order_items/orderid from txt to int, else, was damned too slow
with sales as (select * from orders_items as oi
left join products as p on (oi.sku = p.sku)
where oi.unit_price < p.wholesale_cost)
select c.phone, count(o.customerid) c from sales as s
left join orders as o on (o.orderid = s.orderid)
left join customers as c on (c.customerid = o.customerid)
group by o.customerid, c.phone
order by c desc
limit 10
-- pick first one
