local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.eslint_d,
  b.code_actions.eslint_d,
  b.diagnostics.eslint_d,
  b.formatting.prettier.with { filetypes = { "html", "markdown", "css" } }, -- so prettier works only on these filetypes

  -- Lua
  b.formatting.stylua,

  -- cpp
  b.formatting.clang_format,
  b.diagnostics.cppcheck.with {
    args = { "--language=c++" },
  },
  b.diagnostics.cpplint,

  -- python
  b.diagnostics.flake8,
  b.formatting.autopep8,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
