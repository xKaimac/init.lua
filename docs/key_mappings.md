# Key Mappings

The configuration uses the space key as the leader key.

## Normal Mode
- `<leader>pv`: Open file explorer in the current file's directory
- `J`: Join lines while keeping the cursor in place
- `<C-d>`: Scroll down half a page, keeping cursor centered
- `<C-u>`: Scroll up half a page, keeping cursor centered
- `n`: Search next occurrence, center view on match
- `<leader>y`: Yank to system clipboard
- `<leader>Y`: Yank whole line to system clipboard
- `Q`: Disabled (no operation)
- `<C-f>`: Open tmux sessionizer in a new tmux window (Linux only)
- `<leader>s`: Find and replace current word under cursor
- `<leader>e`: Open floating diagnostic window for LSP warnings
- `<leader>gs`: Open Git status window (Fugitive)
- `<leader>u`: Toggle Undotree panel
- `<leader>ch`: Open Cht.sh with a prompt for the language of the current file

## Insert Mode
- `<C-H>`: Delete previous word (equivalent to <C-W>)

## Visual Mode
- `J`: Move selected block down
- `K`: Move selected block up
- `<leader>p`: Paste over selected text without changing copy buffer
- `<leader>y`: Yank selection to system clipboard

## Visual and Normal Mode
- `<leader>y`: Yank to system clipboard

## Harpoon
- `<leader>a`: Add current file to Harpoon
- `<C-e>`: Toggle Harpoon quick menu
- `<C-h>`: Navigate to 1st file in Harpoon list
- `<C-t>`: Navigate to 2nd file in Harpoon list
- `<C-n>`: Navigate to 3rd file in Harpoon list
- `<C-s>`: Navigate to 4th file in Harpoon list

## Telescope
- `<leader>pf`: Find files in the current directory
- `<C-p>`: Find files tracked by Git
- `<leader>ps`: Search for a string in the current directory

## LSP
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

## Autocompletion (nvim-cmp)
- `<C-p>`: Select previous item
- `<C-n>`: Select next item
- `<C-y>`: Confirm selection
- `<C-Space>`: Complete
- `<Tab>`: Confirm selection if completion menu is visible, otherwise insert tab
