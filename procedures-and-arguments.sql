select
   lower(prc.procedure_name) prc_name,
   prc.subprogram_id,
   lower(arg.argument_name)     argument_name,
         arg.in_out             arg_in_out,
   lower(arg.data_type    )     arg_data_type,
   lower(arg.pls_type     )     arg_pls_type,
   lower(arg.type_owner   )     arg_type_owner,
   lower(arg.type_name    )     arg_type_name,
         arg.defaulted          arg_defaulted,
   prc.overload,
   prc.aggregate,
   prc.pipelined,
   arg.*
-- prc.*
from
   dba_procedures prc left join
   dba_arguments  arg on prc.owner         = arg.owner        and
                         prc.object_name   = arg.package_name and
                         prc.subprogram_id = arg.subprogram_id 
where
   prc.object_name = 'UI_CONT_SVC#' and
   prc.owner       = 'K'
order by
   prc.procedure_name,
   prc.subprogram_id,
   arg.position
