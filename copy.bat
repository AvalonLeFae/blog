set public="\hugoblog\public"
set docs="\docs"
set hugo="D:\Golang\GOPATH\bin\hugo.exe"
cd hugoblog
%hugo%
cd ..
xcopy /E  /I %cd%%public% %cd%%docs%
echo  copy complete
cmd /k