return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
    config = function()
      require("tokyonight").setup({
        transparent = true,
        styles = {
          sidebar = "transparent",
          float = "transparent"
        }
      })
    end
	},
}
