#!/usr/bin/env bash


echo "Installing XCode..."
xcode-select --install

echo "Installing homebrew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap caskroom/cask

echo "Installing the following software using brew:"
echo "  git, docker, autojump"
brew install git docker autojump

echo "Installing the following software using brew cask:"
echo "  iterm2, sublime-text, intellij-idea, firefox,"
echo "  alfred, jumpcut, postman, keepassx,"
echo "  google-backup-and-sync, private-internet-access, vlc,"
echo "  slack, telegram, whatsapp, virtualbox, virtualbox-extension-pack"
brew cask install iterm2 sublime-text intellij-idea \
  firefox alfred jumpcut postman keepassx google-backup-and-sync \
  private-internet-access vlc slack telegram whatsapp \
  virtualbox virtualbox-extension-pack

echo "The following software does not have casks. Manually install them:"
echo "- BetterTouchTool: https://folivora.ai/"

echo "Installing rbenv..."
brew install rbenv

echo "Installing ruby-build..."
brew install ruby-build

echo "Installing ZSH..."
brew install zsh zsh-completions
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
echo "  NOTE: Add the plugin zsh-autosuggestions to the list of plugins in .zshrc"
chsh -s /bin/zsh
