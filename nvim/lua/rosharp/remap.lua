vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- vscode like block moving
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")

vim.keymap.set("n", "Y", "yg$")

-- cursor stays at place when joining lines

-- page jumping
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- cursor stays in the middle when searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste without losing the pasted
vim.keymap.set("x", "<leader>p", "\"_dP")

-- copy to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- copy remap for vertical selection
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- quickfix for navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- search replace
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- give permissions with chmod
-- vim.keymap.set("n", "<leader>c", "<cmd>!chmod +x %<CR>", { silent = true })

-- run current buffer in python
vim.keymap.set("n", "<leader>x", "<cmd>terminal python3 %:.<CR>")

-- save with ctrl+s
vim.keymap.set("n", "<C-s>", "<cmd>:w<cr>")
vim.keymap.set("i", "<C-s>", "<cmd>:w<cr>")
vim.keymap.set("v", "<C-s>", "<cmd>:w<cr>")

-- splits
vim.keymap.set("n", "<C-w>_", "<cmd>vsplit<cr><C-w>L")
vim.keymap.set("n", "<C-w>-", "<cmd>split<cr><C-w>J")

-- terminal
vim.keymap.set("n", "<C-t>", "<cmd>split<cr><C-w>J<cmd>terminal<cr>")
