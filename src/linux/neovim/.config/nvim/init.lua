vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.textwidth = 79
vim.opt.colorcolumn = '79'

vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = true, silent = true })
