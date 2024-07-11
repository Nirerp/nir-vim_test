return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},
	config = function()
		-- Which-key configuration
		local wk = require("which-key")

		-- Register the custom prefixes and their descriptions
		wk.register({
				["<F3>"] = { "<cmd>vsp<CR>", "Vertical Split" },
				["<F4>"] = { "<cmd>sp<CR>", "Horizontal Split" },
				G = {
					name = "Git",
					g = "Lazygit"
				},
				L = {
					name = "Live Server",
					s = "Toggle Liver-Server On/Off"
				},
				c = {
					name = "Open",
					s = "Cheatsheet"
				},

				t = {
					name = "Themes",
					h = "Change Colorscehem"
				},
				l = {
					name = "LSP", -- Change "+prefix" to "LSP"
					f = "Format Code",
					-- You can add more prefixes and their descriptions here
					-- For example:
					r = "Rename (Refactor)",
					a = "Code Actions",
				},
				s = {
					name = "Search",
					w = "word",
				},
				o = {
					name = "Change OneDark",
					t = "Change Style"

				},
			},
			{ prefix = "<leader>" })
	end
}
