select T1.RDB$RELATION_NAME, T2.RDB$FIELD_NAME, T1.RDB$INDEX_NAME

from RDB$INDICES T1, RDB$INDEX_SEGMENTS T2
where T1.RDB$INDEX_NAME = T2.RDB$INDEX_NAME and
      not T1.RDB$RELATION_NAME like 'RDB$%' and
      not T1.RDB$RELATION_NAME like 'MON$%'

order by T1.RDB$RELATION_NAME  
