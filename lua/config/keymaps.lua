---------------------
-- General Keymaps
---------------------
---
local keymap = vim.keymap

-- use jk to exit insert mode
keymap.set("i", "jj", "<ESC>")
keymap.set("i", "jk", "<ESC>")
-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

----------------------
-- Plugin Keybinds
----------------------
-- setup mapping to call :LazyGit
keymap.set("n", "<leader>gg", ":LazyGit<CR>")
-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
keymap.set("n", "<leader>tf", ":NvimTreeFocus<CR>") -- focus file explorer
keymap.set("n", "<leader>tt", ":NvimTreeToggle<CR>") -- toggle file explorer
keymap.set("n", "<leader>ts", ":NvimTreeFindFile<CR>") -- open file explorer to current file
keymap.set("n", "<leader>tc", ":NvimTreeCollapse<CR>") -- collapse file tree

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- telescope git commands (not on youtube nvim video)

-- restart lsp server (not on youtube nvim video)
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary

vim.g.mapleader = " "
keymap.set("n", "<leader>pv", vim.cmd.Ex)

keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

keymap.set("n", "J", "mzJ`z")
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- remap cmd s  to save without having to press :w in insert mode
keymap.set("i", "<C-S>", "<Esc>:w<CR>a")

-- greatest remap ever
keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever
keymap.set({ "n", "v" }, "<leader>y", [["+y]])
keymap.set("n", "<leader>Y", [["+Y]])

keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
keymap.set("i", "<C-c>", "<Esc>")

keymap.set("n", "Q", "<nop>")
keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
keymap.set("n", "<leader>f", vim.lsp.buf.format)

keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>")
keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>")

keymap.set("n", "<leader><leader>", function()
  vim.cmd("so")
end)

keymap.set("n", "<leader>l", function()
  vim.cmd("lua require('lspsaga.diagnostic').show_line_diagnostics()")
end)
-- Key mapping to toggle lsp_lines
keymap.set(
  "n", -- normal mode
  "<Leader>l", -- replace <Leader>l with your preferred keybinding
  require("lsp_lines").toggle, -- toggle lsp_lines
  { desc = "Toggle lsp_lines" }
)

keymap.set({ "n", "v" }, "<leader>]", ":Gen<CR>")
vim.api.nvim_set_keymap("n", "fw", ":HopWord<CR>", { noremap = true })
local conceallevel = 0
keymap.set("n", "<leader>chl", function()
  print("Conceal level changed ")
  vim.api.nvim_win_set_option(0, "conceallevel", conceallevel)
  if conceallevel == 2 then
    conceallevel = 0
  else
    conceallevel = 2
  end
end, { noremap = true })
