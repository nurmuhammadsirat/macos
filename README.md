# macOS Preferences

## XCode

```
xcode-select --install
```

## Homebrew

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap caskroom/cask
```

## Required Software

```
brew install git docker autojump

brew cask install iterm2 sublime-text intellij-idea firefox alfred jumpcut postman keepassx google-backup-and-sync private-internet-access vlc
```

#### Cask Unavailable

* [Better Touch Tool](https://folivora.ai/)

## Required Shell

```
brew install zsh zsh-completions

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

chsh -s /bin/zsh
```

## Ruby

```
brew install rbenv ruby-build

rbenv install 2.6.2 # Or whatever Ruby version you want.
```

## Misc Software

```
brew cask install slack

brew cask install telegram

brew cask install whatsapp

brew cask install java

brew cask install microsoft-office

brew cask install google-drive-file-stream

brew cask install virtualbox virtualbox-extension-pack
```
