/*
Example of usage

chinook=# \set start 5
chinook=# \set end 456
chinook=# \i arifmetic_progression_sum.sql
  sum
--------
 104186
(1 row)
*/

select sum(number) from generate_series(:start, :end, 1) as b(number);
