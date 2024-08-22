-- Prettier configuration
vim.g['prettier#autoformat'] = 0
vim.g['prettier#autoformat_require_pragma'] = 0
vim.g['prettier#exec_cmd_async'] = 1

-- Tell Prettier to use the global config
vim.g['prettier#config_files'] = {
  '~/.prettierrc',
  '~/.prettierrc.json',
  '~/.prettierrc.yml',
  '~/.prettierrc.yaml',
  '~/.prettierrc.json5',
  '~/.prettierrc.js',
  '~/.prettierrc.cjs',
  '~/.prettier.config.js',
  '~/.prettier.config.cjs'
}

local prettier_ft_list = {
  'javascript', 'typescript', 'css', 'less', 'scss', 
  'json', 'graphql', 'markdown', 'vue', 'yaml', 
  'html', 'jsx', 'tsx'
}

-- Autocommand to run Prettier on save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = {"*.js", "*.jsx", "*.ts", "*.tsx", "*.css", "*.less", "*.scss", 
             "*.json", "*.graphql", "*.md", "*.vue", "*.yaml", "*.html"},
  callback = function()
    if vim.tbl_contains(prettier_ft_list, vim.bo.filetype) then
      vim.cmd("Prettier")
    end
  end
})
