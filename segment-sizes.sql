select
   segment_name,
   segment_type,
   owner,
   to_char(bytes / 1024/1024/1024, '999,999,990.0') gb
from
   dba_segments
order by
   bytes desc;