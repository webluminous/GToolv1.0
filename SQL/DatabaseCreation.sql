select * from v$database;

select owner, min(created), max(created)
   from dba_objects
   where created < (select created from v$database)
   group by owner


select * from v$pwfile_users;
//USERNAME  


CREATE DATABASE webluminous
  --USER SYS IDENTIFIED BY sys_password
   USER weblumin IDENTIFIED BY weblumin
   USER SYSTEM IDENTIFIED BY Webluminous123
   LOGFILE GROUP 1 ('/u01/app/oracle/oradata/webluminous/redo01.log') SIZE 100M,
           GROUP 2 ('/u01/app/oracle/oradata/webluminous/redo02.log') SIZE 100M,
           GROUP 3 ('/u01/app/oracle/oradata/webluminous/redo03.log') SIZE 100M
   MAXLOGFILES 5
   MAXLOGMEMBERS 5
   MAXLOGHISTORY 1
   MAXDATAFILES 100
   CHARACTER SET US7ASCII
   NATIONAL CHARACTER SET AL16UTF16
   EXTENT MANAGEMENT LOCAL
   DATAFILE '/u01/app/oracle/oradata/webluminous/system01.dbf' SIZE 325M REUSE
   SYSAUX DATAFILE '/u01/app/oracle/oradata/webluminous/sysaux01.dbf' SIZE 325M REUSE
   DEFAULT TABLESPACE users
      DATAFILE '/u01/app/oracle/oradata/webluminous/users01.dbf'
      SIZE 500M REUSE AUTOEXTEND ON MAXSIZE UNLIMITED
   DEFAULT TEMPORARY TABLESPACE tempts1
      TEMPFILE '/u01/app/oracle/oradata/webluminous/temp01.dbf'
      SIZE 20M REUSE
   UNDO TABLESPACE undotbs
      DATAFILE '/u01/app/oracle/oradata/webluminous/undotbs01.dbf'
      SIZE 200M REUSE AUTOEXTEND ON MAXSIZE UNLIMITED;
