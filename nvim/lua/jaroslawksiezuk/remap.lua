vim.g.mapleader = " "

vim.keymap.set("n", "gn", vim.cmd.bnext)
vim.keymap.set("n", "gp", vim.cmd.bprevious)
vim.keymap.set("n", "gd", vim.cmd.bdelete)

vim.keymap.set("n", "<leader>n", vim.cmd.bnext)
vim.keymap.set("n", "<leader>p", vim.cmd.bprevious)
vim.keymap.set("n", "<leader>d", vim.cmd.bdelete)
