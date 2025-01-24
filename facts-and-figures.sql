select
   owner,
   to_char(sum(bytes /1024/1024), '999,999,990.00') gb
from
   dba_segments
group by
   owner
order by
   gb desc;
   
select * from v$parameter where name in ('processes');
-- 5000

select * from v$osstat where stat_name in ('NUM_CPUS', 'NUM_CPU_CORES', 'NUM_CPU_SOCKETS', 'PHYSICAL_MEMORY_BYTES');
-- 16, 8, 1, 
select 274876792832 / 1024/1204 from dual;
-- 222952

select * from v$iostat_file;
