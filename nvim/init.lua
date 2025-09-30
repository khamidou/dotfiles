-- Set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Enable syntax highlighting
vim.cmd('syntax on')
vim.cmd([[filetype plugin indent on]])
vim.cmd("let g:fugitive_git_executable = 'LANG=en git'")

-- Tab settings
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Search settings
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true

-- UI settings
vim.opt.termguicolors = true
vim.cmd([[colorscheme dracula]])

-- vim.opt.signcolumn = "yes"
-- vim.opt.cursorline = true
vim.opt.wrap = false

-- Better splitting
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Enable mouse support
vim.opt.mouse = "a"

-- Enable clipboard support
vim.opt.clipboard = "unnamedplus"

-- Enable persistent undo
vim.opt.undofile = true

-- Key mappings
local keymap = vim.keymap.set

-- Clear search highlights
keymap('n', '<leader>h', ':nohlsearch<CR>')

-- Navigate buffers
keymap('n', '<S-l>', ':bnext<CR>')
keymap('n', '<S-h>', ':bprevious<CR>')

-- Save file
keymap('n', '<leader>w', ':w<CR>')

vim.keymap.set('n', '<Leader>f', require('telescope.builtin').find_files)
vim.keymap.set('n', '<Leader>b', require('telescope.builtin').buffers)

-- Plugin manager (Packer)
local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd 'packadd packer.nvim'
end

require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'nvim-treesitter/nvim-treesitter' -- Syntax highlighting
  use 'Mofiqul/dracula.nvim'
  use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } }
  use "tpope/vim-fugitive"
  use "github/copilot.vim"
end)

require('telescope').setup{
  defaults = {
    preview = false
  }
}

-- Treesitter setup for Python (and other languages)
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "python" },
  highlight = { enable = true },
}
