#!/bin/sh -eu

TIME="/usr/bin/time -f %M\t%P\t%e\t%x"

while read e d;
do
  echo "day\tram\tcpu\telapsed\texit" >&2
  for i in 1 2 3 4 5 6 7 8;
  do
    echo -n "d${i}\t" >&2
    $TIME $e $d < "d${i}.sql" > /dev/null
  done
done << EEE
sqlite3 noahs.sqlite
./duckdb noahs.duckdb
EEE
