select count(*) c , phone
from orders_items as oi
left join orders as o on (o.orderid = oi.orderid)
left join customers as c on (c.customerid = o.customerid)
left join products as p on (p.sku = oi.sku)
where p.desc like 'Noah%'
group by o.customerid, c.phone
order by c desc limit 12
-- pick first one
