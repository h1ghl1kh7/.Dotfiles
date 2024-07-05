return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				theme = "tokyonight",
			},
			sections = {
				lualine_y = {
					{
						sep = " ) ",
						depth = nil,
						dense = false,
						dense_sep = ".",
						colored = true,
					},
				},
				lualine_c = { {
					"filename",
					path = 2,
				} },
			},
		})
	end,
}
