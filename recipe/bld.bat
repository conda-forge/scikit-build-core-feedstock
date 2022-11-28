python -m pip install . -vv

set ACTIVATE_DIR=%PREFIX%\etc\conda\activate.d
set DEACTIVATE_DIR=%PREFIX%\etc\conda\deactivate.d
mkdir %ACTIVATE_DIR%
if errorlevel 1 exit 1
mkdir %DEACTIVATE_DIR%
if errorlevel 1 exit 1

copy %RECIPE_DIR%\scripts\activate.bat %ACTIVATE_DIR%\%PROJECT_NAME%-activate.bat
if errorlevel 1 exit 1

copy %RECIPE_DIR%\scripts\deactivate.bat %DEACTIVATE_DIR%\%PROJECT_NAME%-deactivate.bat
if errorlevel 1 exit 1

