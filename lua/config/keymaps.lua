--nice things--
--moves selection up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
--keeps cursor in center when half page jumping up/down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
--keeps search terms in center of screen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
--puts whats pasted over into void register
vim.keymap.set("x", "<leader>p", [["_dP]])
-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])
--quicker replace
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
--quicker chmod +x
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

--PLUGIN KEYMAPS--
--netrw
vim.keymap.set("n", "<C-o>", vim.cmd.Ex)
--telescope
local telescope = require('telescope.builtin')
vim.keymap.set('n', '<C-f>', telescope.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<C-g>', telescope.live_grep, { desc = 'Telescope live grep' })
--harpoon
local harpoon = require("harpoon")
harpoon:setup()
vim.keymap.set("n", "<C-a>", function() harpoon:list():add() end)
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
--vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
--vim.keymap.set("n", "<C-j>", function() harpoon:list():select(2) end)
--vim.keymap.set("n", "<C-k>", function() harpoon:list():select(3) end)
--vim.keymap.set("n", "<C-l>", function() harpoon:list():select(4) end)
--undotree
vim.keymap.set('n', '<C-z>', require('undotree').toggle, { noremap = true, silent = true })
--nvim-tree
vim.keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
vim.keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" }) -- toggle file explorer on current file
vim.keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer
vim.keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) -- refresh file explorer
vim.keymap.set("n", "<leader>ft", "<cmd>NvimTreeFocus<CR>", { desc = "Refresh file explorer" }) -- refresh file explorer
