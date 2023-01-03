with clue as (select 
  substr(ordered,1,INSTR(ordered,' ')-1) date,
  substr("desc",1,INSTR("desc",'(')-2) title,
  substr("desc",INSTR("desc",'(')+1, length("desc")-INSTR("desc",'(')-1) color
from orders_items as oi
left join orders as o on (o.orderid = oi.orderid)
left join products as p on (p.sku = oi.sku)
where o.customerid = 8342
and title != '')
select *
from orders_items as oi
left join orders as o on (o.orderid = oi.orderid)
left join customers as c on (c.customerid = o.customerid)
left join products as p on (p.sku = oi.sku)
left join clue as cl on (cl.title = substr("desc",1,INSTR("desc",'(')-2)
  and cl.color != substr("desc",INSTR("desc",'(')+1, length("desc")-INSTR("desc",'(')-1) 
  and cl.date = substr(ordered,1,INSTR(ordered,' ')-1)
)
where o.customerid != 8342
and title is not null
;
