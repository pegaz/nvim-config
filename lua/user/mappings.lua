-- Mappings code goes here.
vim.g.mapleader = ' '

vim.keymap.set("i", "jj", "<Esc>")

vim.keymap.set("n", "<C-h>", "<C-W>h")
vim.keymap.set("n", "<C-j>", "<C-W>j")
vim.keymap.set("n", "<C-k>", "<C-W>k")
vim.keymap.set("n", "<C-l>", "<C-W>l")

--  Opening new windows
vim.keymap.set("n", "<A-v>", ":vsplit<cr>")
vim.keymap.set("n", "<A-h>", ":split<cr>")

-- Managing tabs
vim.keymap.set("n", "<A-t>", ":tabnew<cr>")
vim.keymap.set("n", "<S-k>", ":tabp<cr>")
vim.keymap.set("n", "<S-j>", ":tabn<cr>")

-- Buffer management
vim.keymap.set("n", "<S-l>", ":bn<cr>")
vim.keymap.set("n", "<S-h>", ":bp<cr>")

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

vim.keymap.set("n", "<leader>t", ":exe v:count1 . 'ToggleTerm'<cr>")
vim.keymap.set("i", "<leader>t", "<Esc>:exe v:count1 . 'ToggleTerm'<cr>")
