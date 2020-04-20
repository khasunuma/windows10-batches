@ECHO OFF

IF "%1" == "--hide" GOTO HIDE
IF "%1" == "+H" GOTO HIDE

IF "%1" == "--show" GOTO SHOW
IF "%1" == "-H" GOTO SHOW

SET /P MESSAGE_USAGE="Usage: %0 { --hide | +H } | { --show | -H }" < NUL
GOTO END

:HIDE
ATTRIB /D +H .* > NUL
ATTRIB +H .* > NUL
GOTO END

:SHOW
ATTRIB /D -H .* > NUL
ATTRIB -H .* > NUL
GOTO END

:END
