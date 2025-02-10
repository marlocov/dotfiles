vim.keymap.set("n", '<leader>px', vim.cmd.Ex)
vim.keymap.set('n', '<leader>p', '"+p')
vim.keymap.set('n', '<leader>y', '"+y')
vim.keymap.set("n", '[t', "<cmd>cprev<CR>zz")
vim.keymap.set("n", ']t', "<cmd>cnext<CR>zz")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- Move selected code up
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- Move selected code down
vim.keymap.set('n', '<C-u>', '<C-u>zz') -- Move half a page up and center code
vim.keymap.set('n', '<C-d>', '<C-d>zz') -- Move half a page down and center code
vim.keymap.set('n', 'n', 'nzz')
vim.keymap.set('n', 'N', 'Nzz')
