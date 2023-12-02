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

-- Use my preferred characters in list mode
vim.opt.listchars='tab:▸ ,eol:¬,trail:·'

-- Shortcut to show invisible characters
vim.api.nvim_set_keymap('n', '<leader>l', ":set list!<CR>", {noremap = true})

-- Line numbering toggle
vim.api.nvim_set_keymap('n', '<leader>n', ":set nu!<CR>", {noremap = true})

-- <leader>w to show trailing whitespace as error, <leader>W to turn off again.
vim.api.nvim_set_keymap('n', '<leader>w', ":match Error /\\v[ \\t]+$/<cr>", {noremap = true})

-- Set comments to italic (mainly to make use of the cool Monaspace handwritten
-- italic font).
-- Source: ChatGPT
vim.api.nvim_exec([[
  highlight Comment cterm=italic gui=italic
]], false)

-- Plugin section
-- See https://github.com/junegunn/vim-plug#usage


vim.call('plug#begin')

-- Install plugins here, e.g.:
-- Plug 'tpope/vim-sensible'

Plug 'vim-airline/vim-airline'

-- Support for fish shell scripts
Plug 'dag/vim-fish'

-- Support for git (branches etc)
Plug 'tpope/vim-fugitive'

-- Neovim LSP server configurations
Plug 'neovim/nvim-lspconfig'

-- Auto-completion support
Plug 'hrsh7th/nvim-cmp'

-- Sources for nvim-cmp
Plug 'hrsh7th/cmp-nvim-lsp'  -- auto-completion for LSP servers
Plug 'saadparwaiz1/cmp_luasnip' -- auto-completion for snippets
Plug 'L3MON4D3/LuaSnip'  -- Snippet support (not properly a cmp source)

-- Pre-defined Snippets
Plug 'rafamadriz/friendly-snippets'

-- GUI for installing LSP servers
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'


vim.call('plug#end')

--------------------------------------------------------------------------------
-- Plugin specific configuration
--------------------------------------------------------------------------------

-- Make the Airline status bar use powerline symbols such as the Git branch
-- symbol (turn this off if the terminal uses a font that doesn't support them).
vim.g.airline_powerline_fonts = 1

-- Load autocomplete/LSP/snippet config
-- References to ./lua/, see e.g.
-- https://github.com/Allaman/nvim/blob/main/init.lua.
require("autocomplete")
