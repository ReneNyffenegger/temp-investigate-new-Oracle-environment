--
--  Create an SQL statement that selects
--    - number of non-null values
--    - number of distinct values
--  in each column of a given table.
--
select
   'select count(*) cnt, ' ||
    listagg(
       'count('          || column_name || ') cnt_'     || column_name || ', ' ||
       'count(distinct ' || column_name || ') cnt_dst_' || column_name
       , ', ') ||
       ' from ' || table_name
from
   dba_tab_columns
where
   owner      =  user            and
   table_name = 'TQ84_ZE'
group by
   table_name;
