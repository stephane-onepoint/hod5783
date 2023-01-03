select count(orderid) c, name, phone from (
  select *,
    SUBSTR(o.ordered, INSTR(o.ordered, ' ')+1) d,
    SUBSTR(o.shipped, INSTR(o.shipped, ' ')+1) s
  from orders as o
  left join customers as c on (o.customerid = c.customerid)
  where d >= '04:00:00'
  and d <= '05:00:00'
  and s >= '04:00:00'
  and s <= '05:00:00'
)
group by name, phone
order by c desc
-- pick the first one
