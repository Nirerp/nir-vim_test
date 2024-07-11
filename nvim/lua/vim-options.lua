-- Global Configuration ---
vim.g.mapleader = " "
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set nu")
------------------
--------------------


-- Keybindings --
vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format, { desc = "Format Code" }) -- Format Code
vim.keymap.set("n", "<leader>th", ":Telescope colorscheme<CR>", { desc = "Change Colorscheme", silent = true })
vim.keymap.set("n", "<leader>;", "<cmd>Alpha<CR>", { desc = "Dashboard" })
vim.keymap.set("n", "<F3>", "<cmd>vsp<CR>", { desc = "Vertical Split" })
vim.keymap.set("n", "<F4>", "<cmd>sp<CR>", { desc = "Horizontal Split" })



--Lazygit--
vim.keymap.set("n", "<leader>Gg", "<CMD>LazyGit<CR>", {desc = "LazyGit"})


vim.keymap.set("n", "<leader>cs", ":e ~/.config/nvim/cheat_sheet.md<CR>", { desc = "Cheatsheet" })


-- Tab related Keybindings
vim.keymap.set('n', '<C-w>', '<cmd>BufferClose!<CR>', { noremap = true, silent = true, desc = "Close Tab" })
vim.keymap.set('n', '<A-,>', '<cmd>BufferNext<CR>', { noremap = true, silent = true, desc = "Next Tab" })
vim.keymap.set('n', '<A-.>', '<cmd>BufferPrevious<CR>', { noremap = true, silent = true, desc = "Previous Tab" })

-- Telescope related keybindings:
vim.keymap.set('n', '<leader>sw', '<cmd>Telescope current_buffer_fuzzy_find<CR>', { desc = "Search String" })



vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, { desc = "Refactor" })



-- resizing
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", {})
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", {})
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", {})
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", {})
-- window movement
vim.keymap.set("n", "<C-h>", "<C-w>h", {})
vim.keymap.set("n", "<C-j>", "<C-w>j", {})
vim.keymap.set("n", "<C-k>", "<C-w>k", {})
vim.keymap.set("n", "<C-l>", "<C-w>l", {})
-- indentation
vim.keymap.set("v", "<", "<gv", { desc = "Indent Left" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent Right" })

-- Map F6 to run the current Python file in a floating terminal
vim.api.nvim_set_keymap(
	"n",
	"<F6>",
	"<cmd>lua run_file()<CR>",
	{ noremap = true, silent = true, desc = "Run/Compile File" }
)






-- Keybindings for shifting lines ----
-- Move the current line up with Shift+Up
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { noremap = true, silent = true })

-- Move the current line down with Shift+Down
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { noremap = true, silent = true })

-- Move a block of lines up in visual mode with Shift+Up
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

-- Move a block of lines down in visual mode with Shift+Down
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })


vim.keymap.set("n", "<leader>Ls", "<cmd>LiveServerToggle<CR>", { desc = "Toggle Live-Server On/Off" })

