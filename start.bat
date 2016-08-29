@echo off
echo 1 start tail
echo 2 start mgocollector
echo 3 start monitor

set /p var="please enter:"
if %VAR%==1 GOTO TAIL
if %VAR%==2 GOTO MGOCOLLECTOR
if %VAR%==3 GOTO MONITOR
:TAIL 
  ECHO "start tail and sender to collector!"
  logd tail ./conf/config.ini
  PAUSE
  GOTO END
:MGOCOLLECTOR 
 ECHO "start mgocollector and wait for sender"
  logd mgocollector ./conf/config.ini
 PAUSE

:MONITOR 
 ECHO "start monitor"
  logd monitor ./conf/monitor.ini
 PAUSE
:END