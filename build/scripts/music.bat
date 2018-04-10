@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  music startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Add default JVM options here. You can also use JAVA_OPTS and MUSIC_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\music-0.0.1-snapshot.jar;%APP_HOME%\lib\groovy-all-2.3.11.jar;%APP_HOME%\lib\spring-boot-starter-data-mongodb-reactive-2.0.0.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-webflux-2.0.0.RELEASE.jar;%APP_HOME%\lib\spring-security-config-5.0.3.RELEASE.jar;%APP_HOME%\lib\spring-security-core-5.0.3.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-actuator-2.0.0.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-data-cassandra-reactive-2.0.0.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-json-2.0.0.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-2.0.0.RELEASE.jar;%APP_HOME%\lib\spring-data-mongodb-2.0.5.RELEASE.jar;%APP_HOME%\lib\mongodb-driver-3.6.3.jar;%APP_HOME%\lib\mongodb-driver-reactivestreams-1.7.1.jar;%APP_HOME%\lib\mongodb-driver-async-3.6.3.jar;%APP_HOME%\lib\spring-webflux-5.0.4.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-reactor-netty-2.0.0.RELEASE.jar;%APP_HOME%\lib\reactor-netty-0.7.5.RELEASE.jar;%APP_HOME%\lib\reactor-core-3.1.5.RELEASE.jar;%APP_HOME%\lib\hibernate-validator-6.0.7.Final.jar;%APP_HOME%\lib\spring-web-5.0.4.RELEASE.jar;%APP_HOME%\lib\nio-multipart-parser-1.1.0.jar;%APP_HOME%\lib\spring-boot-actuator-autoconfigure-2.0.0.RELEASE.jar;%APP_HOME%\lib\spring-data-cassandra-2.0.5.RELEASE.jar;%APP_HOME%\lib\spring-boot-autoconfigure-2.0.0.RELEASE.jar;%APP_HOME%\lib\spring-boot-actuator-2.0.0.RELEASE.jar;%APP_HOME%\lib\spring-boot-2.0.0.RELEASE.jar;%APP_HOME%\lib\spring-context-5.0.4.RELEASE.jar;%APP_HOME%\lib\spring-aop-5.0.4.RELEASE.jar;%APP_HOME%\lib\spring-tx-5.0.4.RELEASE.jar;%APP_HOME%\lib\spring-data-commons-2.0.5.RELEASE.jar;%APP_HOME%\lib\spring-beans-5.0.4.RELEASE.jar;%APP_HOME%\lib\spring-expression-5.0.4.RELEASE.jar;%APP_HOME%\lib\spring-core-5.0.4.RELEASE.jar;%APP_HOME%\lib\micrometer-core-1.0.1.jar;%APP_HOME%\lib\spring-boot-starter-logging-2.0.0.RELEASE.jar;%APP_HOME%\lib\javax.annotation-api-1.3.2.jar;%APP_HOME%\lib\snakeyaml-1.19.jar;%APP_HOME%\lib\nio-stream-storage-1.1.3.jar;%APP_HOME%\lib\cassandra-driver-core-3.4.0.jar;%APP_HOME%\lib\logback-classic-1.2.3.jar;%APP_HOME%\lib\log4j-to-slf4j-2.10.0.jar;%APP_HOME%\lib\jul-to-slf4j-1.7.25.jar;%APP_HOME%\lib\metrics-core-3.2.6.jar;%APP_HOME%\lib\slf4j-api-1.7.25.jar;%APP_HOME%\lib\mongodb-driver-core-3.6.3.jar;%APP_HOME%\lib\bson-3.6.3.jar;%APP_HOME%\lib\reactive-streams-1.0.2.jar;%APP_HOME%\lib\jackson-datatype-jdk8-2.9.4.jar;%APP_HOME%\lib\jackson-datatype-jsr310-2.9.4.jar;%APP_HOME%\lib\jackson-module-parameter-names-2.9.4.jar;%APP_HOME%\lib\jackson-databind-2.9.4.jar;%APP_HOME%\lib\validation-api-2.0.1.Final.jar;%APP_HOME%\lib\jboss-logging-3.3.2.Final.jar;%APP_HOME%\lib\classmate-1.3.4.jar;%APP_HOME%\lib\spring-jcl-5.0.4.RELEASE.jar;%APP_HOME%\lib\HdrHistogram-2.1.10.jar;%APP_HOME%\lib\LatencyUtils-2.0.3.jar;%APP_HOME%\lib\guava-19.0.jar;%APP_HOME%\lib\jackson-annotations-2.9.0.jar;%APP_HOME%\lib\jackson-core-2.9.4.jar;%APP_HOME%\lib\netty-handler-proxy-4.1.22.Final.jar;%APP_HOME%\lib\netty-codec-http-4.1.22.Final.jar;%APP_HOME%\lib\netty-handler-4.1.22.Final.jar;%APP_HOME%\lib\netty-transport-native-epoll-4.1.22.Final.jar;%APP_HOME%\lib\jnr-posix-3.0.27.jar;%APP_HOME%\lib\jnr-ffi-2.0.7.jar;%APP_HOME%\lib\logback-core-1.2.3.jar;%APP_HOME%\lib\log4j-api-2.10.0.jar;%APP_HOME%\lib\netty-codec-socks-4.1.22.Final.jar;%APP_HOME%\lib\netty-codec-4.1.22.Final.jar;%APP_HOME%\lib\netty-transport-native-unix-common-4.1.22.Final.jar;%APP_HOME%\lib\netty-transport-4.1.22.Final.jar;%APP_HOME%\lib\netty-buffer-4.1.22.Final.jar;%APP_HOME%\lib\netty-resolver-4.1.22.Final.jar;%APP_HOME%\lib\netty-common-4.1.22.Final.jar;%APP_HOME%\lib\jffi-1.2.10.jar;%APP_HOME%\lib\jffi-1.2.10-native.jar;%APP_HOME%\lib\asm-commons-5.0.3.jar;%APP_HOME%\lib\asm-analysis-5.0.3.jar;%APP_HOME%\lib\asm-util-5.0.3.jar;%APP_HOME%\lib\asm-tree-5.0.3.jar;%APP_HOME%\lib\asm-5.0.3.jar;%APP_HOME%\lib\jnr-x86asm-1.0.2.jar;%APP_HOME%\lib\jnr-constants-0.9.0.jar

@rem Execute music
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %MUSIC_OPTS%  -classpath "%CLASSPATH%" com.raghavi.Application %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable MUSIC_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%MUSIC_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
