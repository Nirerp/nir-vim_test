-- Package manager: Lazy  ----
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)
--------

-- Load plugins and configurations
require("lazy").setup("plugins")
require("vim-options")
require("compiler")
require("python_snippets")

-- Set your colorscheme
vim.cmd[[colorscheme tokyonight-night]]

