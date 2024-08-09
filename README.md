# Neovim Configuration

This Neovim configuration provides a powerful and efficient coding environment with a focus on productivity and ease of use.

## Key Features

1. **Plugin Management**: Uses Packer for efficient plugin management.
2. **Fuzzy Finding**: Telescope for quick file and content searching.
3. **Git Integration**: Fugitive for Git operations within Neovim.
4. **Quick File Navigation**: Harpoon for fast switching between frequently used files. (The GOAT)
5. **Language Server Protocol (LSP)**: Comprehensive LSP setup with lsp-zero and Mason.
6. **Autocompletion**: nvim-cmp for intelligent code completion.
7. **Syntax Highlighting**: Treesitter for advanced syntax highlighting and parsing.
8. **Undo History**: Undotree for visualizing and navigating through file history.
9. **Color Scheme**: Customizable with Rose Pine as the default theme.
10. **Auto Formatting**: Prettier for automatic code formatting on save.
11. **Auto Pairing**: Automatic bracket and quote pairing with nvim-autopairs.

## Installation

Clone this repo into your relevant nvim config folder (`~/.config/nvim/` for Linux, and `~/AppData/Local/nvim/` for Windows). Navigate to `nvim/lua/packer.lua` and shout it out with `:so`. Call `:PackerSync` and make sure that all downloads and installs are complete. You may need to shout out the relevant files or adjust specific configurations on your machine if there are issues (If in doubt, `:so` everything and `:PackerSync` to take the shotgun approach). To get the theme and colours right, call `:ColorMyPencils()` from `nvim/after/plugin/colors.lua`. You will need to do this whenever you use `:PackerSync` to get the theme back to normal.

## Usage

Refer to the individual sections in this README for specific keybindings and features of each component.

## Customization

This configuration can be customized by modifying the respective Lua files in the `lua/kaimac/` and `after/plugin/` directories.
