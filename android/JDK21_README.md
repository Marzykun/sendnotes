Windows JDK 21 setup for this project

This project targets Java 21 for the Android build. Follow these steps to install and configure JDK 21 on Windows (PowerShell) and make Gradle use it.

1. Install a JDK 21 distribution

- Option A: Adoptium/Eclipse Temurin
  - Download the JDK 21 MSI or ZIP from https://adoptium.net or another vendor.
  - Run the MSI or unpack the ZIP to a location such as C:\Java\jdk-21

- Option B: Microsoft Build of OpenJDK / other vendors
  - Use the vendor of your choice and install to a known path.

2. Set JAVA_HOME and update PATH (PowerShell)

Run in an elevated PowerShell session or update system environment variables via Settings:

$env:JAVA_HOME = 'C:\Java\jdk-21'
$env:Path = $env:JAVA_HOME + '\bin;' + $env:Path

To persist these system-wide, use the System Properties GUI or set via PowerShell with [Environment]::SetEnvironmentVariable.

3. Verify installation

java -version
javac -version

Both should show 21.x

4. In Gradle (optional)

If you cannot set JAVA_HOME system-wide, you can point Gradle to a specific JDK by editing or creating android/gradle.properties with:

org.gradle.java.home=C:\Java\jdk-21

5. Notes

- Gradle 8.12 supports Java 21 but ensure Android Gradle Plugin (AGP) you use is compatible with Java 21. If you hit issues, you may need to upgrade the AGP version in the top-level build files.
- After installing JDK 21, run: gradlew.bat -v to confirm Gradle sees Java 21.

If you want, I can try to download and install JDK 21 automatically, or update AGP settings if you tell me which AGP version to target.
