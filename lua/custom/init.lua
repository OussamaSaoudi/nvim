vim.opt.colorcolumn = "80"

--- Doxygen Global Variables
vim.g.load_doxygen_syntax = 1
vim.g.doxygen_enhanced_color = 1

--- configure terminal to be fig
-- vim.opt.shell = "figterm"
vim.g.python3_host_prog = '/opt/homebrew/bin/python3'
vim.fn.setenv("FIG_TERM", nil)
