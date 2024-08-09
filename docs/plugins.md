# Plugins

This Neovim configuration uses the following plugins:

1. **packer.nvim**: Plugin manager
   - Efficiently manages and loads plugins

2. **telescope.nvim**: Fuzzy finder
   - Provides quick file and content searching capabilities
   - Keybindings:
     - `<leader>pf`: Find files in the current directory
     - `<C-p>`: Find files tracked by Git
     - `<leader>ps`: Search for a string in the current directory

3. **rose-pine**: Color scheme
   - Default color scheme for this configuration

4. **nvim-treesitter**: Syntax highlighting and code parsing
   - Provides more accurate and performant syntax highlighting
   - Installed parsers: C, Lua, JavaScript, TypeScript, Vim, VimDoc, Query, Markdown (including inline), TSX, HTML

5. **playground**: Treesitter playground for debugging

6. **harpoon**: Quick file navigation
   - Allows fast switching between frequently used files
   - Keybindings:
     - `<leader>a`: Add current file to Harpoon
     - `<C-e>`: Toggle Harpoon quick menu
     - `<C-h>`, `<C-t>`, `<C-n>`, `<C-s>`: Navigate to 1st, 2nd, 3rd, and 4th file in Harpoon list respectively

7. **undotree**: Visualize and interact with undo history
   - Keybinding: `<leader>u` to toggle Undotree panel

8. **vim-fugitive**: Git integration
   - Provides Git operations within Neovim
   - Keybinding: `<leader>gs` to open Git status window

9. **lsp-zero.nvim**: Easy LSP setup
   - Includes:
     - mason.nvim: LSP installer
     - mason-lspconfig.nvim: Bridge between mason and lspconfig
     - nvim-lspconfig: LSP configuration
     - nvim-cmp: Autocompletion
     - cmp-nvim-lsp: LSP source for nvim-cmp
     - LuaSnip: Snippet engine

10. **vim-prettier**: Code formatting
    - Automatically formats files on save

11. **nvim-autopairs**: Automatic bracket pairing
    - Features:
      - Treesitter integration for improved accuracy
      - Special handling for HTML tags and template strings in JavaScript/TypeScript
      - JSX/TSX element handling
      - Fast wrap functionality with `<M-e>` keybinding

## Plugin Configuration

Plugins are managed using Packer and can be configured in the `packer.lua` file located in the `lua/kaimac/` directory. To install or update plugins:

1. Open Neovim
2. Run `:PackerSync`

After running `:PackerSync`, you may need to call `:ColorMyPencils()` to reset the color scheme.

For detailed configuration of each plugin, refer to their respective files in the `after/plugin/` directory.
