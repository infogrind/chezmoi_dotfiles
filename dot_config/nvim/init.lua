-- init.lua: Init configuration for neovim
-- Marius Kleiner
-- <kleiner@gmail.com>

-- Unlike vim, where I would explicitly source `defaults.vim` in my vimrc, Nvim
-- already sets many reasonable default options. See `help :nvim-defaults` for
-- details.

-- Set a default text width
vim.opt.textwidth = 80

-- Enable the mouse in all modes. Press shift to select if you want to copy
-- outside the terminal.
vim.opt.mouse = 'a'

-- Set wildcard mode to bash-like and show options in menu
vim.opt.wildmode = 'longest,full'
