vim.opt.termguicolors = true
require("config.lazy")
require("config.keymap")

vim.opt.clipboard = "unnamedplus"
-- vim.lsp.inlay_hint.enable(true)
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 2

-- vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8

vim.cmd([[
    highlight DiagnosticUnderlineError gui=undercurl guisp=Red
    highlight DiagnosticUnderlineWarn  gui=undercurl guisp=Yellow
    highlight DiagnosticUnderlineInfo  gui=undercurl guisp=Blue
    highlight DiagnosticUnderlineHint  gui=undercurl guisp=Green
]])
