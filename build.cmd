@echo off
echo Creating HTML from Madoko source files...
call madoko -v document\document.mdk --odir=out
move out\document.html ".\Static Analysis Results Interchange Format (SARIF).html"
rmdir /s /q out
echo Done
