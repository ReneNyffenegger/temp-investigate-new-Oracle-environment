with
   a as (select column_name, column_id from all_tab_columns where table_name = 'T1' and owner = 'OW'),
   b as (select column_name, column_id from all_tab_columns where table_name = 'T2' and owner = 'OW')
select
   a.column_name,
   b.column_name,
   a.column_id,
   b.column_id
from
   a full outer join b on a.column_name = b.column_name
where
   a.column_name is null or
   b.column_name is null
order by
   a.column_id;

--
-- Compare with http://www.adp-gmbh.ch/ora/admin/scripts/comptables.html
--
