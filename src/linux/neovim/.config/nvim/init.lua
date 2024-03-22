vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.textwidth = 79
vim.opt.colorcolumn = '79'

vim.api.nvim_set_keymap('c', 'jj', '<C-c>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = true, silent = true })

vim.g.mapleader = ' '
vim.api.nvim_set_keymap('n', '<Leader>q', '<Cmd>quit<CR>', {
  noremap = true,
  silent = true,
})
vim.api.nvim_set_keymap('n', '<Leader>w', '<Cmd>write<CR>', {
  noremap = true,
  silent = true,
})

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require('catppuccin').setup({
        flavour = 'macchiato',
      })
    end,
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  },
  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end,
  },
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true,
  },
})

vim.cmd 'silent! colorscheme catppuccin'
