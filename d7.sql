with clue as (select 
  substr(ordered,1,INSTR(ordered,' ')-1) date,
  substr(desc,1,INSTR(desc,'(')-2) title,
  substr(desc,INSTR(desc,'(')+1, length(desc)-INSTR(desc,'(')-1) color
from orders_items as oi
left join orders as o on (o.orderid = oi.orderid)
left join products as p on (p.sku = oi.sku)
where o.customerid = 8342
and title != '')
select *,
  substr(ordered,1,INSTR(ordered,' ')-1) zdate,
  substr(desc,1,INSTR(desc,'(')-2) ztitle,
  substr(desc,INSTR(desc,'(')+1, length(desc)-INSTR(desc,'(')-1) zcolor
from orders_items as oi
left join orders as o on (o.orderid = oi.orderid)
left join customers as c on (c.customerid = o.customerid)
left join products as p on (p.sku = oi.sku)
left join clue as cl on (cl.title = ztitle
  and cl.color != zcolor
  and cl.date = zdate
)
where o.customerid != 8342
and title is not null
;
