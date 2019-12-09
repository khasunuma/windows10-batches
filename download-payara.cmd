@ECHO OFF

REM Remote Environment Settings
SET MAVEN_REPOSITORY=http://repo1.maven.org/maven2
SET CURL_OPTS=

REM Local Environment Settings
SET DOWNLOAD_DIR=%USERPROFILE%\Downloads

REM When no argument is set
IF "%1" == "" GOTO USAGE

REM %%f is each version number given by arguments
FOR %%f IN (%*) DO (
  REM Make directory to download
  MKDIR %DOWNLOAD_DIR%\%%f
  
  REM Download payara-<version>.zip to download directory.
  curl -G %CURL_OPTS% -o %DOWNLOAD_DIR%\%%f\payara-%%f.zip %MAVEN_REPOSITORY%/fish/payara/distributions/payara/%%f/payara-%%f.zip
  
  REM Download payara-ml-<version>.zip to download directory.
  curl -G %CURL_OPTS% -o %DOWNLOAD_DIR%\%%f\payara-ml-%%f.zip %MAVEN_REPOSITORY%/fish/payara/distributions/payara-ml/%%f/payara-ml-%%f.zip
  
  REM Download payara-web-<version>.zip to download directory.
  curl -G %CURL_OPTS% -o %DOWNLOAD_DIR%\%%f\payara-web-%%f.zip %MAVEN_REPOSITORY%/fish/payara/distributions/payara-web/%%f/payara-web-%%f.zip
  
  REM Download payara-web-ml<version>.zip to download directory.
  curl -G %CURL_OPTS% -o %DOWNLOAD_DIR%\%%f\payara-web-ml-%%f.zip %MAVEN_REPOSITORY%/fish/payara/distributions/payara-web-ml/%%f/payara-web-ml-%%f.zip
  
  REM Download payara-micro-<version>.jar to download directory.
  curl -G %CURL_OPTS% -o %DOWNLOAD_DIR%\%%f\payara-micro-%%f.jar %MAVEN_REPOSITORY%/fish/payara/extras/payara-micro/%%f/payara-micro-%%f.jar
)
GOTO END

:USAGE
ECHO Usage: %0 [version] ...

:END
