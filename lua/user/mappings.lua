-- Mappings code goes here.
vim.g.mapleader = ' '

vim.keymap.set("i", "jj", "<Esc>")

--  Opening new windows
vim.keymap.set("n", "<A-v>", ":vsplit<cr>")
vim.keymap.set("n", "<A-b>", ":split<cr>")

vim.keymap.set("n", "<C-h>", "<C-W>h")
vim.keymap.set("n", "<C-j>", "<C-W>j")
vim.keymap.set("n", "<C-k>", "<C-W>k")
vim.keymap.set("n", "<C-l>", "<C-W>l")

-- Managing tabs
vim.keymap.set("n", "<A-t>", ":tabnew<cr>")
vim.keymap.set("n", "<A-l>", ":tabn<cr>")
vim.keymap.set("n", "<A-h>", ":tabp<cr>")

-- Buffer management
vim.keymap.set("n", "<S-l>", ":bn<cr>")
vim.keymap.set("n", "<S-h>", ":bp<cr>")

-- Builtin terminal
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
vim.keymap.set("t", "jj", "<C-\\><C-n>")

-- Telescope-related keymaps
local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", 
    function()
        builtin.find_files({
            no_ignore = false,
            hidden = true
        })
    end)
vim.keymap.set("n", "<leader>fg", function() builtin.live_grep() end)
vim.keymap.set("n", "<leader>fb", function() builtin.buffers() end)
vim.keymap.set("n", "<leader>fr", function() require("telescope").extensions.file_browser.file_browser() end)

