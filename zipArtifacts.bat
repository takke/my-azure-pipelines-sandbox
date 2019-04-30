@echo off

set OUTFILE_INST=hoge-Installer.zip
set OUTFILE_EXE=hoge-Exe.zip

echo AAA > %OUTFILE_EXE%
echo BBB > %OUTFILE_INST%

find /?


@echo start generate MD5 hash
certutil -hashfile %OUTFILE_EXE% MD5  | find /v "MD5" | find /v "CertUtil" > %OUTFILE_EXE%.md5
certutil -hashfile %OUTFILE_INST% MD5 | find /v "MD5" | find /v "CertUtil" > %OUTFILE_INST%.md5
@echo end generate MD5 hash


exit /b 0
