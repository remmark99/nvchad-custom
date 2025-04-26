require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Map [d to go to next diagnostic and show diagnostics under the cursor
map("n", "[d", function()
  vim.diagnostic.goto_next({ wrap = true })       -- Go to the next diagnostic
  vim.diagnostic.open_float()      -- Show diagnostics under the cursor
end, { desc = "Go to next diagnostic and show it" })
-- Map [d to go to next diagnostic and show diagnostics under the cursor
map("n", "]d", function()
  vim.diagnostic.goto_prev()       -- Go to the next diagnostic
  vim.diagnostic.open_float()      -- Show diagnostics under the cursor
end, { desc = "Go to next diagnostic and show it" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
