-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use({
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
      vim.cmd('colorscheme rose-pine')
    end
  })

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    requires = {
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      {'neovim/nvim-lspconfig'},
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'L3MON4D3/LuaSnip'},
    }
  }

  use {
    'prettier/vim-prettier',
    run = 'npm install --frozen-lockfile --production'
  }

  use {
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup{
        check_ts = true,  -- Enable Treesitter support
        ts_config = {
          html = {'tag_name'},  -- Handle HTML tags
          javascript = {'template_string'},  -- Handle JavaScript template strings
          typescript = {'template_string'},  -- Handle TypeScript template strings
          javascriptreact = {'jsx_element', 'jsx_fragment'},  -- Handle JSX elements
          typescriptreact = {'jsx_element', 'jsx_fragment'},  -- Handle TSX elements
        },
        disable_filetype = { "TelescopePrompt" },  -- Disable in specific filetypes
        fast_wrap = {
          map = "<M-e>",  -- Keymap for fast wrap
          chars = { "{", "[", "(", '"', "'" },
          pattern = string.gsub([[ [%'%"%)%>%]%)%}] ]], "%s+", ""),
          end_key = "$",
          keys = "qwertyuiopzxcvbnmasdfghjkl",
          check_comma = true,
          highlight = "Search",
          highlight_grey = "Comment",
        },
      }
    end
  }

end)
