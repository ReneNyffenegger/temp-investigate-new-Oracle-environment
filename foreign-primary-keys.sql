select
/*  parent.*,
  '---',
  child_.*,
  '---', */
  parent.owner           as parent_owner,
  parent.table_name      as parent_table_name,
  child_.owner           as child__owner,
  child_.table_name      as child__table_name,
  child_.constraint_name as name_foreign_key,
  parent.constraint_name as name_primary_key
from
  dba_constraints child_                                                             join
  dba_constraints parent on child_.r_constraint_name = parent.constraint_name and
                            child_.r_owner           = parent.owner
where
  child_.table_name = 'OBJ'  
