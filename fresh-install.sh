# Check for Homebrew, install it if missing
if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update

# Install GNU core utilities
brew install coreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

# Install Bash 4
brew install bash

# Install more recent versions of some OS X Tools
brew tap homebrew/dupes
brew install homebrew/dupes/grep

binaries=(
    graphicsmagick
    webkit2png
    rename
    zopfli
    ffmpeg
    python
    sshfs
    trash
    node
    tree
    ack
    hub
    git
)

echo "Installing binaries"
brew install ${binaries[@]}

brew cleanup

"Install oh-my-zsh"
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

