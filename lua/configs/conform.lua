local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    javascript = { "eslint_d" }, -- Use eslint_d for JavaScript
    javascriptreact = { "eslint_d" }, -- Use eslint_d for JSX
    typescript = { "eslint_d" }, -- Use eslint_d for TypeScript
    typescriptreact = { "eslint_d" }, -- Use eslint_d for TSX
    -- css = { "prettier" },
    -- html = { "prettier" },
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

return options
