return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.6",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			-- telescope setup --
			local builtin = require("telescope.builtin")                                        -- telescope setup
			----- key mappings ----
			vim.keymap.set("n", "<C-p>", builtin.find_files, { desc = "Find Local Files" })     -- Ctrl+p
			vim.keymap.set("n", "<leader>sf", builtin.live_grep, { desc = "Find Files Globally" }) -- <leader> + fg -> space + fg
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				pickers = {
					colorscheme = {
						enable_preview = true,
						preview_cutoff = 100
					},
				},
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({

						}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
