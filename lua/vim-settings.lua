-- setting vim commands
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set mouse=a")
vim.cmd("syntax on")
vim.cmd("set history=5000")
vim.cmd("set encoding=utf-8")
vim.cmd("set clipboard=unnamedplus")
vim.cmd("set autoindent")
vim.cmd("set smartindent")
vim.cmd("set filetype=on")
vim.cmd("set cursorline")
vim.g.mapleader = " "

vim.keymap.set('n','<leader>j',':terminal jupyter-lab<CR>',{noremap = true, silent = true})
