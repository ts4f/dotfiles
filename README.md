# Dotfiles

## Setup on a New Machine

### 1. Install Dependencies

```bash
# Zsh
sudo apt install zsh
chsh -s $(which zsh)

# Stow
sudo apt install stow

# eza (modern ls replacement)
sudo apt install eza

# Neovim (download latest tarball)
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
```

### 2. Install Zap (Zsh plugin manager)

```bash
zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh --proto '=https' --tlsv1.2)
```

Zap will automatically install the following plugins on first launch (defined in `.zshrc`):

- `zsh-users/zsh-autosuggestions`
- `zsh-users/zsh-syntax-highlighting`
- `romkatv/powerlevel10k`
- `zap-zsh/supercharge`

### 3. Install NVM

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
```

Then install Node:

```bash
nvm install --lts
```

### 4. Install Angular CLI

```bash
npm install -g @angular/cli
```

### 5. Clone and Stow Dotfiles

```bash
git clone https://github.com/ts4f/dotfiles ~/dotfiles
cd ~/dotfiles
stow .
```

This symlinks all config files to their correct locations in `$HOME`.

## Neovim

Neovim is installed to `/opt/nvim-linux-x86_64/` and added to PATH via `.zshrc`:

```zsh
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
```

The config lives at `~/.config/nvim` (symlinked from `~/dotfiles/.config/nvim`).
