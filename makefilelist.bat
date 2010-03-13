REM DropBox Public Lister
REM By Drale of drale.com
REM As seen on usefulgeek.com
REM ++++++++++++++++++++++++++
if exist index.html del index.html
dir /a /b /-p /o:gen > filelisting.txt
for /F "delims=;" %%I in (filelisting.txt) do (if %%I NEQ filelisting.txt echo ^<a href="./%%I"^>%%I^</a^>^<br^> >> index.html)
if exist filelisting.txt del filelisting.txt