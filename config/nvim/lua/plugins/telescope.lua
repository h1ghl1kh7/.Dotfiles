local mapKey = require("utils.keyMapper").mapKey
return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.6",
		dependencies = { "nvim-lua/plenary.nvim", "jonarrien/telescope-cmdline.nvim" },
		opts = {
			extensions = {
				cmdline = {},
			},
		},
		config = function(_, opts)
			require("telescope").setup(opts)
			require("telescope").load_extension("cmdline")
			local builtin = require("telescope.builtin")
			mapKey("<leader>ff", builtin.find_files)
			mapKey("<leader>fl", builtin.live_grep)
			mapKey("<leader>t", builtin.tags)
			mapKey("<leader>b", builtin.buffers)
			mapKey("<leader>fc", builtin.commands)
			mapKey("gd", builtin.lsp_definitions)
			mapKey("gr", builtin.lsp_references)
			mapKey(":", "<cmd>Telescope cmdline<cr>")
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
