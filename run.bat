@echo off
docker run -it -v %cd%\usr_ws:/home/utahrobotics/usr_ws stormymcstorm/usr

FOR /f "tokens=*" %%i IN ('docker ps -aq') DO docker rm %%i
FOR /f "tokens=*" %%i IN ('docker images -q -f "dangling=true"') DO docker rmi %%i