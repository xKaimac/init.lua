# Additional Configurations

This document covers various additional configurations and features in the Neovim setup.

## Color Scheme Configuration

The configuration uses a custom function `ColorMyPencils` to set up the color scheme:

- The default color scheme is set to "rose-pine".
- The function can accept a different color scheme as an argument.
- It removes the background color for normal text and floating windows, allowing for a transparent background if your terminal supports it.

To apply the color scheme:
1. Open Neovim
2. Run `:lua ColorMyPencils()`

To change the color scheme:
1. Modify the default in the `ColorMyPencils` function in `after/plugin/colors.lua`
2. Or call the function with a different color scheme name as an argument: `:lua ColorMyPencils("gruvbox")`

Note: It's recommended to call this function again after running `:PackerSync` to ensure the color scheme is correctly applied.

## Git Integration (Fugitive)

The configuration uses vim-fugitive for Git integration within Neovim.

Keybinding:
- `<leader>gs`: Open Git status window

This keybinding allows quick access to Git operations directly from within Neovim. The Git status window provides an overview of your repository's current state and allows for various Git operations.

## Quick File Navigation (Harpoon)

Harpoon is used for quick navigation between frequently used files.

Keybindings:
- `<leader>a`: Add current file to Harpoon
- `<C-e>`: Toggle Harpoon quick menu
- `<C-h>`: Navigate to 1st file in Harpoon list
- `<C-t>`: Navigate to 2nd file in Harpoon list
- `<C-n>`: Navigate to 3rd file in Harpoon list
- `<C-s>`: Navigate to 4th file in Harpoon list

Harpoon allows you to quickly switch between a set of marked files, greatly enhancing navigation in your projects.

## Fuzzy Finder (Telescope)

Telescope is used for fuzzy finding, providing quick access to files and content search.

Keybindings:
- `<leader>pf`: Find files in the current directory
- `<C-p>`: Find files tracked by Git
- `<leader>ps`: Search for a string in the current directory

Note that the string searching uses `Grep`, so if you're on Windows you'll need to disable or modify this in `nvim/after/plugin/telescope.lua`

Features:
- File Search: Quickly locate files in your project.
- Git Integration: Easily find files tracked by Git.
- Content Search: Search for specific strings across your project files.

## Syntax Highlighting (Treesitter)

Treesitter is used for advanced syntax highlighting and code parsing.

Installed Parsers:
C, Lua, JavaScript, TypeScript, Vim, VimDoc, Query, Markdown (including inline), TSX, HTML

Configuration:
- Auto Installation: Treesitter will automatically install missing parsers when entering a buffer.
- Synchronous Installation: Parsers are not installed synchronously.
- Highlighting: Syntax highlighting is enabled for all supported languages.
- Additional Vim Regex Highlighting: Disabled to prevent potential slowdowns and duplicate highlights.

## Undo History (Undotree)

Undotree is used for visualizing and interacting with the undo history.

Keybinding:
- `<leader>u`: Toggle Undotree panel

Features:
- Visualize the undo history of your file
- Navigate through different states of your document
- Easily revert to previous versions of your work

## Auto-formatting

The configuration uses Prettier for automatic code formatting on save. This applies to all file types (`*` pattern).

## Auto-pairing

Nvim-autopairs is used for automatic bracket and quote pairing. It's configured to work with various languages and frameworks, including HTML, JavaScript, TypeScript, and React.

## Auto Direcotry Entry

When creating a directory in Netrw, navigate to it automatically after creation.
