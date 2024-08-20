# Nvim configs

- LSP
- Multi Cursors
- Auto Completion
- Rose Pine theme
- Fuzzy Find
- File Manager
- Tree Sitter
- Prettier
- Comment
- Git Signs
- Random themes (vscode, papercolor)

## Installing

```bash
mkdir -p ~/.config/nvim && git clone https://github.com/marcos-venicius/nvim-configs ~/.config/nvim
```

## Setting up

You should install `ripgrep`:

```bash
sudo apt-get install ripgrep -y
```

To use `prettier`, you should install `prettierd`:

```bash
npm install -g @fsouza/prettierd
```

To use `go`, you should install `gopls`:

```bash
go install -v golang.org/x/tools/gopls@latest
```

If you want to exclude some folders from live grep, for example: `node_modules`, you can configure
it by creating a file `~/.gitignore`, and adding your excluded files and folders like:

```
node_modules
*.lock
```

And, after this, configuring it to git:

```bash
git config --global core.excludesFile ~/.gitignore
```

## Selecting random theme by hand

Everytime you open your nvim a random theme will be selected, but if you want to randomize it again:

```
:lua ChooseRandomTheme
```
