select
  '   bmn.' || lower(col.column_name) || ','
from
   dba_tab_columns col
where
   col.owner = 'K' and
   col.table_name = 'BASE_MAIN'
order by
   col.column_id;
