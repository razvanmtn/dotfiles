# Dotfiles

My dotfiles configuration. Instalation steps:

## Install iterm2
- Download and install iterms2
- Download and install `VictorMono Nerd Font` font
- Configure iterm2 profile to use the font
- Color palette:
  - Background color: `#182026`

## Install Alacritty (iterm2 alternative)
- `https://alacritty.org/`

## Install fish
- Install fish shell: `brew install fish`
- Check fish path: `which fish`
- Add path to `/etc/shells`
- Set fish as default shell: `chsh -s /opt/homebrew/bin/fish`
- Add brew binaries in fish path run the command: `fish_add_path /opt/homebrew/bin`

## Install fisher
- Run: `curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher`
- Install fisher plugins: `fisher install ilancosman/tide@v6`
- Install fisher plugins: `fisher install edc/bass`
- Install fisher plugins: `fisher install jorgebucaran/nvm.fish`

## Install nvm
- Run: `curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash`
- Install node 18: `nvm install 18`

## Enabling yarn
- Enable corepack: `corepack enable`
- Update yarn: `yarn set version stable; yarn install`

## Install tmux
- Run `brew install tmux`
- Run `git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm`
- Reload tmux and press `leader + Shift + i` to install the plugins

## Install neovim
- Run `brew install neovim`
- Link neovim to vim: `sudo ln -s (which nvim) /usr/local/bin/vim`

## Install misc tools
- Run `brew install lazygit`
- Run: `brew install ripgrep`
- Run: `brew install fzf`
- Run: `brew install fd`
- Run: `brew install btop`
- Run `brew install --cask visual-studio-code`
- Run `sudo npm install -g typescript typescript-language-server`
- Run `sudo npm install -g vscode-langservers-extracted`
- Run `sudo npm install -g @razvanmuntian/pomodoro`
- Run `brew install yt-dlp`
- Run `brew install ffmpeg`
- Run `brew install go`
- Run `go install github.com/razvanmtn/write-to-file-cli@latest`
