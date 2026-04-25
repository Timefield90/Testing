@echo off
echo Downloading Gradle Wrapper...
powershell -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/gradle/gradle/v8.0.0/gradle/wrapper/gradle-wrapper.jar' -OutFile 'gradle\wrapper\gradle-wrapper.jar'"
if exist "gradle\wrapper\gradle-wrapper.jar" (
    echo Gradle wrapper downloaded successfully!
) else (
    echo Failed to download. Please download manually from:
    echo https://services.gradle.org/distributions/gradle-8.0-bin.zip
)
pause
