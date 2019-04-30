@echo off

set OUTFILE_INST=hoge-Installer.zip
set OUTFILE_EXE=hoge-Exe.zip

echo AAA > %OUTFILE_EXE%
echo BBB > %OUTFILE_INST%

where find

set FIND_CMD=C:\Windows\System32\find.exe

%FIND_CMD% /?

%FIND_CMD% A  %OUTFILE_EXE%

%FIND_CMD% "A"  %OUTFILE_EXE%

dir /?

dir


@echo start generate MD5 hash
certutil -hashfile %OUTFILE_EXE% MD5  | %FIND_CMD% /v "MD5" | %FIND_CMD% /v "CertUtil" > %OUTFILE_EXE%.md5
certutil -hashfile %OUTFILE_INST% MD5 | %FIND_CMD% /v "MD5" | %FIND_CMD% /v "CertUtil" > %OUTFILE_INST%.md5
@echo end generate MD5 hash


exit /b 0
