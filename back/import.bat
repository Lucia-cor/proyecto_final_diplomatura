 @echo off
 heroku config | findstr JAWSDB_URL > config.txt
 set /p url=<config.txt
 set "string=%url:?=" & set "x=%"
 set "x=%string:/=" & set "dbname=%"
 echo DB name: %dbname%
 echo DB name: %dbname% >> config.txt
 set "x=%string:@=" & set "substring=%"
set "host=%substring:/=" & set "x=%"
 echo Host:
 echo Host:
 %host%
 %host% >> config.txt
 set "x=%string::=" & set "substring=%"
 set "password=%substring:@=" & set "x=%"
 echo Password:
 echo Password:
 %password%
 %password% >> config.txt
 set "x=%string:://=" & set "substring=%"
 set "user=%substring::=" & set "x=%"
 echo User:
 echo User:
 mysql-u
 %user%
 %user% >> config.txt
 %user%-p%password%--ssl-mode=DISABLED < %1-h
 %host%-D
 %dbname%