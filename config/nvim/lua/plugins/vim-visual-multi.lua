return {
	"mg979/vim-visual-multi",
	branch = "master",
	event = "VeryLazy",
	init = function()
		vim.g.VM_maps = {
			["Find Under"] = "<C-d>",
			["Add Cursor Down"] = "<C-j>",
			["Add Cursor Up"] = "<C-k>",
		}
	end,
}
