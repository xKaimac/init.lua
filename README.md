# Kaimac's Neovim Configuration

This Neovim config (Based on [ThePrimeAgen's](https://github.com/ThePrimeagen/init.lua)) aims to replace a regular IDE with a fairly purposeful set of plugins to make things fast and intuitive.

## Table of Contents
- [Features](#features)
- [Installation](#installation)
- [Key Mappings](#key-mappings)
- [Neovim Settings](#neovim-settings)
- [Plugins](#plugins)
- [Language Server Protocol (LSP)](#language-server-protocol-lsp)
- [Additional Configurations](#additional-configurations)

## Features

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
11. **Auto Pairing**: Automatic bracket and quote pairing with nvim-autopairs. Automatic HTML tag closing with nvim-ts-autotag.
12. **Cheat Sheat**: Hotkey to grab a cheet sheet prompt in the language of the current file.
13. **Auto Directory Entry**: Jump straight into a newly created directory when made in `Netrw`

## Installation

Clone this repo into your relevant nvim config folder (`~/.config/nvim/` for Linux, and `~/AppData/Local/nvim/` for Windows). Navigate to `nvim/lua/packer.lua` and source it with `:so`. Call `:PackerSync` and make sure that all downloads and installs are complete. You may need to source the relevant files or adjust specific configurations on your machine if there are issues (If in doubt, `:so` everything and `:PackerSync` to take the shotgun approach). To get the theme and colours right, call `:ColorMyPencils()` from `nvim/after/plugin/colors.lua`. You will need to do this whenever you use `:PackerSync` to get the theme back to normal.

## Key Mappings

For a detailed list of key mappings, see [Key Mappings](docs/key_mappings.md).

## Neovim Settings

For information on Neovim settings, see [Neovim Settings](docs/neovim_settings.md).

## Plugins

For a list of plugins and their configurations, see [Plugins](docs/plugins.md).

## Language Server Protocol (LSP)

For details on the LSP configuration, see [LSP Configuration](docs/lsp_configuration.md).

## Additional Configurations

For information on color scheme, git integration, and other additional configurations, see [Additional Configurations](docs/additional_configurations.md).

## Usage

Refer to the individual sections in this README and the linked documentation for specific keybindings and features of each component.

## Customization

This configuration can be customized by modifying the respective Lua files in the `lua/kaimac/` and `after/plugin/` directories.
