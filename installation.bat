@echo off
curl https://dl.google.com/drive/InstallBackupAndSync.exe -o sync.exe && sync.exe
set /p geyser="Do you want to use Geyser for bedrock crossover? (y/n) "
set /p version="What version do you want? "
if %geyser%==y (curl https://cdn.getbukkit.org/spigot/spigot-%version%.jar -o server.jar && mkdir plugins && cd plugins && curl https://ci.opencollab.dev//job/GeyserMC/job/Geyser/job/master/ -o Geyser-Spigot.jar) else (curl https://s3.amazonaws.com/Minecraft.Download/versions/%version%/minecraft_server.%version%.jar -o server.jar)