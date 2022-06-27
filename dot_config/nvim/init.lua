-- init.lua: Init configuration for neovim
-- Marius Kleiner
-- <kleiner@gmail.com>

-- Unlike vim, where I would explicitly source `defaults.vim` in my vimrc, Nvim
-- already sets many reasonable default options. See `help :nvim-defaults` for
-- details.

-- Emulate vim-plug's Plug command, I'll use it in the plugin section below.
-- See https://dev.to/vonheikemen/neovim-using-vim-plug-in-lua-3oom.
local Plug = vim.fn['plug#']

-- Set a default text width
vim.opt.textwidth = 80

-- Enable the mouse in all modes. Press shift to select if you want to copy
-- outside the terminal.
vim.opt.mouse = 'a'

-- Set wildcard mode to bash-like and show options in menu
vim.opt.wildmode = 'longest,full'

-- Plugin section
-- See 


vim.call('plug#begin')

-- Install plugins here, e.g.:
-- Plug 'tpope/vim-sensible'

Plug 'vim-airline/vim-airline'

vim.call('plug#end')

--------------------------------------------------------------------------------
-- Plugin specific configuration
--------------------------------------------------------------------------------

-- Make the Airline status bar use powerline symbols such as the Git branch
-- symbol (turn this off if the terminal uses a font that doesn't support them).
vim.g.airline_powerline_fonts = 1
