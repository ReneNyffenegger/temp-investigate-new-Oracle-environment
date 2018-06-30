select
  *
from
  dba_cons_columns
where
  constraint_name = 'CODE_ACCESS#P'
order by
  position;
