-- ESLint configuration
vim.g.ale_fixers = {
  javascript = {'eslint'},
  typescript = {'eslint'},
  javascriptreact = {'eslint'},
  typescriptreact = {'eslint'},
}
vim.g.ale_linters = {
  javascript = {'eslint'},
  typescript = {'eslint'},
  javascriptreact = {'eslint'},
  typescriptreact = {'eslint'},
}
vim.g.ale_fix_on_save = 1
vim.g.ale_lint_on_save = 1
vim.g.ale_lint_on_text_changed = 'never'
vim.g.ale_lint_on_insert_leave = 0

-- Use project-specific ESLint when available
vim.g.ale_javascript_eslint_use_global = 0
vim.g.ale_typescript_eslint_use_global = 0

-- Fallback to global ESLint config if no local config is found
vim.g.ale_javascript_eslint_options = '--config ~/.eslintrc.js'
vim.g.ale_typescript_eslint_options = '--config ~/.eslintrc.js'

-- Autocommand to run ESLint on save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = {"*.js", "*.jsx", "*.ts", "*.tsx"},
  callback = function()
    vim.cmd("ALEFix")
  end
})
