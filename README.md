# macOS

This is a simple repo for me to setup and sync my settings.

## iTerm

After installing iTerm, go to Preferences > General > "Load Preferences From A Custom Folder Or URL" and set it to the `iterm-preferences` folder.

## Sublime Text 3

After installing ST3, ensure ST3 is not running and do the following:

```
cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/
rm -r User/
ln -s <this repo>/sublime-text-3/User
```

Start ST3 to initialize all packages.

## Software

Run `initial-setup.sh` to install all required software. This is a one-time script for a fresh macOS.

It does the following:
- Install XCode
- Install Homebrew
- Install the following required software using `brew` or `brew cask`:
  - Git
  - Docker
  - Autojump
  - iTerm2
  - Sublime Text 3
  - Intellij Ultimate
  - Firefox
  - Alfred
  - Jumpcut
  - Postman
  - KeepassX
  - Google Backup-And-Sync (for Google drive)
  - private internet access VPN
  - VLC
  - Slack
  - Telegram
  - Whatsapp
  - Virtualbox and extension pack
- Install rbenv and ruby-build.
- Install ZSH, Oh-My-ZSH and [zsh autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)

Pending automation as there is no cask formulae for the following:
- [Better Touch Tool](https://folivora.ai/)

