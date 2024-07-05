return {
	"mg979/vim-visual-multi",
	branch = "master",
  event = "BufReadPost",
	init = function()
    vim.g["VM_default_mappings"] = 0
		vim.g.VM_maps = {
			["Find Under"] = "<C-n>",
      ["Add Cursor Down"] = "<C-j>",
      ["Add Cursor Up"] = "<C-k>"
		}
	end,
}
