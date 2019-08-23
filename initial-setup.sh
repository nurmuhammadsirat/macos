#!/usr/bin/env bash


echo "Installing XCode..."
xcode-select --install

echo "Installing homebrew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap caskroom/cask

echo "Installing the following software using brew:"
echo "  git, docker, autojump"
brew install git docker autojump

echo "NOTE: to activate autojump, include the following in ~/.zshrc:"
echo "  [ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh"

echo "Installing the following software using brew cask:"
echo "  iterm2, sublime-text, intellij-idea, firefox,"
echo "  alfred, jumpcut, postman, keepassx,"
echo "  google-backup-and-sync, private-internet-access, vlc,"
echo "  slack, telegram, whatsapp, virtualbox, virtualbox-extension-pack"
brew cask install iterm2 sublime-text intellij-idea \
  firefox alfred jumpcut postman keepassx google-backup-and-sync \
  private-internet-access vlc slack telegram whatsapp

echo "The following software may require user input to allow installation. Please install them manually."
echo "- brew cask install virtualbox virtualbox-extension-pack"

echo "The following software does not have casks. Manually install them:"
echo "- BetterTouchTool: https://folivora.ai/"

echo "Installing rbenv and ruby-build..."
brew install rbenv ruby-build

echo "Setting up git aliases"
git config --global alias.co checkout
git config --global alias.cm 'commit -m'
git config --global alias.br 'branch -a'
git config --global alias.st status

echo "Installing ZSH..."
brew install zsh zsh-completions
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
echo "NOTE: to activate zsh-completions, add the plugin in ~/.zshrc:"
echo "  plugins=(zsh-autosuggestions)"

chsh -s /bin/zsh
