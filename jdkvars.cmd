@ECHO OFF

REM Path to default JDK install directory (strongly recommended to set)
SET JAVA_HOME=

REM Path to Maven install directory
SET MAVEN_HOME=
SET MAVEN_OPTS=

REM Show help
IF "%1" == "--help" SET /P MESSAGE_USAGE="Usage: %0 [ --default | --latest | --jdk6 | --jdk7 | --jdk8 | --jdk9 | --jdk10 | --jdk11 | --jdk12 | --jdk13 | --jdk14 | --jdk15 | --jdk16 | --jdk17 ]" < NUL

REM Choose JDK
IF "%1" == "--default" GOTO SET_JAVA_HOME
IF "%1" == "--jdk6"    SET JAVA_HOME=
IF "%1" == "--jdk7"    SET JAVA_HOME=
IF "%1" == "--jdk8"    SET JAVA_HOME=
IF "%1" == "--jdk9"    SET JAVA_HOME=
IF "%1" == "--jdk10"   SET JAVA_HOME=
IF "%1" == "--jdk11"   SET JAVA_HOME=
IF "%1" == "--jdk12"   SET JAVA_HOME=
IF "%1" == "--jdk13"   SET JAVA_HOME=
IF "%1" == "--jdk14"   SET JAVA_HOME=
IF "%1" == "--jdk15"   SET JAVA_HOME=
IF "%1" == "--jdk16"   SET JAVA_HOME=
IF "%1" == "--jdk17"   SET JAVA_HOME=
IF "%1" == "--latest"  SET JAVA_HOME=

REM Set environment variables
:SET_JAVA_HOME
IF "%JAVA_HOME%" == "" GOTO NO_JDKs
SET PATH=%JAVA_HOME%\bin;%PATH%
ECHO JAVA_HOME is %JAVA_HOME%

:SET_MAVEN_HOME
IF "%MAVEN_HOME%" == "" GOTO NO_MAVEN
SET PATH=%MAVEN_HOME%\bin;%PATH%
ECHO MAVEN_HOME is %MAVEN_HOME%
GOTO END

:NO_MAVEN
ECHO Maven is not available.
GOTO END

:NO_JDKs
ECHO JDK is not avaliable.
GOTO END

:END
