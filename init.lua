require('plugins')

-- Disable compatibility with vi which can cause unexpected issues.
vim.o.compatible = false

-- Enable type file detection. Vim will be able to try to detect the type of file in use.
-- filetype on

-- Enable plugins and load plugin for the detected file type.
-- filetype plugin on

-- Load an indent file for the detected file type.
-- filetype indent on

-- Turn syntax highlighting on.
vim.o.syntax = "on"

-- Add numbers to each line on the left-hand side.
vim.o.number = true

-- Highlight cursor line underneath the cursor horizontally.
vim.o.cursorline = true

-- Set shift width to 4 spaces.
vim.o.shiftwidth = 4

-- Set tab width to 4 columns.
vim.o.tabstop = 4

-- Use space characters instead of tabs.
vim.o.expandtab = true

-- Do not save backup files.
--vim.o.backup = "no"

-- Do not let cursor scroll below or above N number of lines when scrolling.
vim.o.scrolloff = 8

-- Do not wrap lines. Allow long lines to extend as far as the line goes.
vim.o.wrap = 80

-- While searching though a file incrementally highlight matching characters as you type.
vim.o.incsearch = true

-- Ignore capital letters during search.
vim.o.ignorecase = true

-- Override the ignorecase option if searching for capital letters.
-- This will allow you to search specifically for capital letters.
vim.o.smartcase = true

-- Show partial command you type in the last line of the screen.
vim.o.showcmd = true

-- Show the mode you are on the last line.
vim.o.showmode = true

-- Show matching words during a search.
vim.o.showmatch = true

-- Use highlighting when doing a search.
vim.o.hlsearch = false

-- Set the commands to save in history default number is 20.
vim.o.history = 1000

-- Enable auto completion menu after pressing TAB.
vim.o.wildmenu = true

-- Make wildmenu behave like similar to Bash completion.
-- vim.o.wildmode = list:longest

-- There are certain files that we would never want to edit with Vim.
-- Wildmenu will ignore files with these extensions.
-- set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

-- Enable relative line numbering
vim.o.relativenumber = true

vim.cmd('colorscheme gruvbox')
require('lualine').setup({
    options = {
        theme = 'gruvbox'
    }
})

vim.g.loader_netrw = 1
vim.g.loader_netwrPlugin = 1

-- Set termguicolors to enable highlight groups
vim.o.termguicolors = true

-- setup nvim-tree
require('nvim-tree').setup()

-- setup telescope
require("telescope").load_extension("file_browser")

-- MAPPINGS --------------------------------------------------------------- {{{

-- Mappings code goes here.
vim.g.mapleader = ' '

vim.keymap.set("i", "jj", "<Esc>")

vim.keymap.set("n", "<C-h>", "<C-W>h")
vim.keymap.set("n", "<C-j>", "<C-W>j")
vim.keymap.set("n", "<C-k>", "<C-W>k")
vim.keymap.set("n", "<C-l>", "<C-W>l")

vim.keymap.set("n", "bn", ":bn<cr>")
vim.keymap.set("n", "bp", ":bp<cr>")

-- Telescope-related keymaps
local builtin = require("telescope.builtin")

vim.keymap.set("n", "ff", 
    function()
        builtin.find_files({
            no_ignore = false,
            hidden = true
        })
    end)
vim.keymap.set("n", "fg", function() builtin.live_grep() end)
vim.keymap.set("n", "fb", function() builtin.buffers() end)

local file_browser = require("telescope").extensions.file_browser

vim.keymap.set("n", "<leader>fb", function() require("telescope").extensions.file_browser.file_browser() end)

-- NERDTree shortcuts
-- -- nnoremap <leader>n :NERDTreeFocus<CR>
-- nnoremap <C-n> :NERDTree<CR>
-- nnoremap <C-t> :NERDTreeToggle<CR>
-- nnoremap <C-f> :NERDTreeFind<CR>


-- }}}

