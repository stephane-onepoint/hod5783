select * from customers WHERE
((birthdate >= '1946-03-21' and birthdate <= '1946-04-19')
or (birthdate >= '1958-03-21' and birthdate <= '1958-04-19')
or (birthdate >= '1970-03-21' and birthdate <= '1970-04-19')
or (birthdate >= '1982-03-21' and birthdate <= '1982-04-19')
or (birthdate >= '1994-03-21' and birthdate <= '1994-04-19'))
and citystatezip = 'South Ozone Park, NY 11420';