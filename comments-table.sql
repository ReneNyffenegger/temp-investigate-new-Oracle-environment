select * from dba_tab_comments where owner not in ('SYS', 'OUTLN', 'SYSTEM', 'DBSNMP') and comments is not null;

