# windows10-batches
Batch files collection for Windows 10

## fix-msdia80.cmd

Moves `msdia80.dll` to the suitable place if it's installed under `C:\` by unexpected reason.

Usage:
* Run `fix-msdia80` and then `msdia80.dll` should be moved into the suitable directory and modified the registory entry.

## dotfiles.cmd

Hides or show dot files (e.g. `.gitignore`) in the current directory.

Usage:
* Run `dotfiles --hide` and then make the all dot files hide in the current directory.
* Run `dotfiles --show` and then make the all dot files show in the current directory.

## jdkvars.cmd

Sets environment variables for JDK which you want to use.

Usage:

* If you want to choose JDK 11, run `jdkvars --jdk11` and then set `JAVA_HOME` and add the JDK location to `PATH`. Currently, it supports following options: `--jdk6` to `--jdk17`, `--default` and `--latest`.
* Run `jdkvars` without option, it's assumed to be obtained `--default` and set the location of the default JDK to `JAVA_HOME`.

Before you use the batch file, you must edit it and set the locations of your JDKs. For example, if `javac` of JDK 11 is placed at `C:\java\jdk-11\bin\javac.exe`, rewrite the following line:

```
IF "%1" == "--jdk11"   SET JAVA_HOME=
```

to as follows:

```
IF "%1" == "--jdk11"   SET JAVA_HOME=C:\java\jdk-11
```

You also should set `JAVA_HOME` of the default JDK as same as the above.

## download-payara.cmd

Download Payara Platform Community from Maven Central Repository.

Remarks: If you are a customer of Payara Enterprise, you can set some options to `MAVEN_REPOSITORY` and `CURL_OPTS` environment variables to download the patches. See the document of Payara Nexus Repository for customers only.

