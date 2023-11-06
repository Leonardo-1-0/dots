# dots

## Setup

* Make sure to have a newer [nvim](https://github.com/neovim/neovim/wiki/Installing-Neovim) verison installed (8 >=), the newer the better.
You can also download the appimage and alias it to nvim in ~/.bashrc for minimal effort.
* Make sure to be using a [nerd font](https://www.nerdfonts.com/font-downloads) to display all fancy symbols. Download it and unzip in in ~/.fonts
* Make sure to have nodejs and npm installed (for mason, i.e., lsp/linter/formatter installation). If you have an older node version already installed,
download nvm, the node version manager. It will allow you to download and set a newer node version as default, one that can be used by mason (18 >=).

### NVM download/setup

These two commands will do all for you, just follow [this guide](https://www.freecodecamp.org/news/node-version-manager-nvm-install-guide/)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
or
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
