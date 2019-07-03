# macOS Preferences

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

### XCode

```
xcode-select --install
```

### Homebrew

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap caskroom/cask
```

### Required Software

#### Via brew/cask

```
brew install git docker autojump

brew cask install iterm2 sublime-text intellij-idea firefox alfred jumpcut postman keepassx google-backup-and-sync private-internet-access vlc
```

#### Cask unavailable

* [Better Touch Tool](https://folivora.ai/)

### Required Shell

```
brew install zsh zsh-completions

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

chsh -s /bin/zsh
```

### Ruby

```
brew install rbenv ruby-build

rbenv install 2.6.2 # Or whatever Ruby version you want.
```

### Misc Software

```
brew cask install slack

brew cask install telegram

brew cask install whatsapp

brew cask install java

brew cask install microsoft-office

brew cask install google-drive-file-stream

brew cask install virtualbox virtualbox-extension-pack
```
