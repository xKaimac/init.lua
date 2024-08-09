# Language Server Protocol (LSP) Configuration

I'm using lsp-zero with Mason for managing language servers.

## Installed Language Servers

The following language servers are installed and configured:

- TypeScript (tsserver)
- ESLint
- Lua (lua_ls)

A new language should be detected and the relevant language server installed when a different file extension is opened. Using `:Mason` is always an option to manually install any that aren't picked up.

## Autocompletion (nvim-cmp)

Autocompletion is provided by nvim-cmp and is set up with the following keybindings:

- `<C-p>`: Select previous item
- `<C-n>`: Select next item
- `<C-y>`: Confirm selection
- `<C-Space>`: Complete
- `<Tab>`: Confirm selection if completion menu is visible, otherwise insert tab

Autocompletion sources include LSP, buffer, and file path.

## LSP Keybindings

The following keybindings are set up for LSP functionality:

- `gd`: Go to definition
- `K`: Hover information
- `<leader>vws`: Workspace symbol search
- `<leader>vd`: Open diagnostic float
- `[d`: Go to next diagnostic
- `]d`: Go to previous diagnostic
- `<leader>vca`: Code action
- `<leader>vrr`: References
- `<leader>vrn`: Rename
- `<C-h>` (in insert mode): Signature help

## Customization

To add or modify language servers, you can edit the `lsp.lua` file in the `after/plugin/` directory. You can add new servers to the `ensure_installed` table and configure them as needed.

To install a new language server:

1. Add the server name to the `ensure_installed` table in `lsp.lua`
2. Run `:PackerSync` to update plugins
3. Restart Neovim or source the `lsp.lua` file

Remember to consult the documentation of individual language servers for specific configuration options.
