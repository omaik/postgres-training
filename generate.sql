select extract('isodow' from date), to_char(date, 'YYYY blaMONTH DD DAY HH24')
  from generate_series(date '2016-01-04', date '2018-01-01', interval '0.5 days') as b(date);
