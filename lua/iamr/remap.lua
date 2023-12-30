vim.g.mapleader = " "

--splits and closes on leader, navigates to the open pane
vim.keymap.set("n", "<leader>v", "<C-w>v<C-w>l")
vim.keymap.set("n", "<leader>h", "<C-w>s<C-w>j")
vim.keymap.set("n", "<leader>x", "<C-w>q")

--open new terminal
vim.keymap.set("n", "<leader>t", vim.cmd.terminal)
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]])

-- make it save on exit?
vim.keymap.set("n", "<leader>-", vim.cmd.Ex)

-- might switch to alt instead
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--centering cursor things from prime
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "n", "nzzzv")

-- paste over into void, I don't use rn
-- vim.keymap.set("x", "<leader>p", [["_dP]])

-- yanking into system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

--let's come up with some better window hotkeys
--after we add terminal as well

-- allows commenting with leader /
vim.keymap.set("n", "<leader>/",
	function()
		require("Comment.api").toggle.linewise.current()
	end)
vim.keymap.set("v", "<leader>/", "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>")

vim.keymap.set("n", "<leader>fm", vim.cmd.Format)

-- toggle relative line number
vim.wo.relativenumber = true
vim.keymap.set("n", "<leader>rl", function()
	vim.wo.relativenumber = not vim.wo.relativenumber
end)

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
