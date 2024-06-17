local mapKey = require("utils.keyMapper").mapKey

-- Neotree toggle
mapKey("<c-p>", ":Neotree focus<cr>")
mapKey("<S-A-h>", ":FloatermToggle<CR>", "n")
mapKey("<S-A-h>", "<C-\\><C-n>:FloatermToggle<CR>", "t")
mapKey("<S-A-n>", "<C-\\><C-n>:FloatermNew<CR>", "t")
mapKey("<S-A-j>", "<C-\\><C-n>:FloatermNext<CR>", "t")
mapKey("<S-A-p>", "<C-\\><C-n>:FloatermNew python3<CR>", "t")

mapKey("<leader>ae", ":AerialToggle<CR>")

mapKey("<localleader>e", ":<C-u>MoltenEvaluateVisual<CR>gv", "v")
mapKey("<localleader>i", ":MoltenInit<CR>")
mapKey("<localleader>l", ":MoltenEvaluateLine<CR>")
mapKey("<localleader>r", ":MoltenReevaluateCell<CR>")
mapKey("<localleader>c", ":MoltenInterrupt<CR>")
mapKey("<localleader>d", ":MoltenDelete<CR>")
mapKey("<localleader>o", ":noautocmd MoltenEnterOutput<CR>")

vim.api.nvim_exec(
	[[
  autocmd TermOpen * tnoremap <buffer> <C-l> <C-l>
]],
	false
)
