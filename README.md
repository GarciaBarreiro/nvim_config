# My Neovim config

There are some things that may not work.

Mostly copied from [this video](https://www.youtube.com/watch?v=w7i4amO_zaE), GitHub repository [here](https://github.com/ThePrimeagen/init.lua).

Neovim 0.9 required.

`npm` package required too.

## Keyboard Mappings
- `<leader> = ' '`

### Fugitive
- `<leader>gs`

### Netrw
- `<leader>pv`

### LSP
- `<C-p>`: Select previous item
- `<C-n>`: Select next item
- `<C-y>`: Autocomplete with selected item
- `<C-Space>`: Show autocomplete menu
- `<C-z>`: Abort

### Telescope
- `<leader>pf`: Find all files
- `<C-p>`: Find git files
- `<leader>ps`: Search strings using grep (requires [ripgrep](https://github.com/BurntSushi/ripgrep))

## nvim-pandoc
- `<leader>pr`: Exec `:PandocRead`
- `<leader>pw`: Write file and exec `:PandocWrite`
