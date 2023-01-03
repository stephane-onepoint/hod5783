sqlite3 -csv -header noahs.sqlite 'select * from customers' > 1_customers.csv
sqlite3 -csv -header noahs.sqlite 'select * from products' > 2_products.csv
sqlite3 -csv -header noahs.sqlite 'select * from orders' > 3_orders.csv
sqlite3 -csv -header noahs.sqlite 'select * from orders_items' > 4_orders_items.csv

duckdb noahs.duck "CREATE TABLE customers AS SELECT * FROM read_csv_auto('1_customers.csv');"
duckdb noahs.duck "CREATE TABLE products AS SELECT * FROM read_csv_auto('2_products.csv');"
duckdb noahs.duck "CREATE TABLE orders AS SELECT * FROM read_csv_auto('3_orders.csv');"
duckdb noahs.duck "CREATE TABLE orders_items AS SELECT * FROM read_csv_auto('4_orders_items.csv');"

