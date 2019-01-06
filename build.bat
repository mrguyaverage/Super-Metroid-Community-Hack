REM Build a patched rom from the source files

REM Setup a clean build dir
del /f /s /q "build.old"
rmdir "build.old"
move "build" "build.old"
mkdir "build"

for /r "vanilla" %%f in (*.smc) do copy "%%f" "build/metroid.smc"

for /r "src\ASM" %%f in (*.ips) do "tools/uips" a "%%f" "build/metroid.smc"
for /r "src\ASM" %%f in (*.asm) do "tools/xkas" "%%f" "build/metroid.smc"

"tools\SMART\SMART.exe" import | findstr "^"
