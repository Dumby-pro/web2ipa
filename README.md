# web2ipa

Convert web apps into sideloadable iOS IPA and Android APK files.

## Install via APT

```bash
curl -s https://Dumby-pro.github.io/web2ipa/install.sh | sudo bash
```

Or manually:

```bash
curl -fsSL https://Dumby-pro.github.io/web2ipa/KEY.gpg | sudo gpg --dearmor -o /usr/share/keyrings/web2ipa.gpg
echo "deb [signed-by=/usr/share/keyrings/web2ipa.gpg] https://Dumby-pro.github.io/web2ipa stable main" | sudo tee /etc/apt/sources.list.d/web2ipa.list
sudo apt update
sudo apt install web2ipa
```

## Usage

```
web2ipa [options] <web-app-folder>
```

Run `web2ipa --help` for full usage information.

## Dependencies

**Required:** `python3`, `zip`, `unzip`, `curl`

**Recommended:** `ideviceinstaller`, `libimobiledevice-utils`, `openjdk-17-jdk`

## About

`web2ipa` packages any local web app folder into a sideloadable iOS `.ipa` (via xtool + Swift) or Android `.apk` (via Gradle + Java). Also supports deploying to SideStore sources and extracting IPAs from connected iPhones.
