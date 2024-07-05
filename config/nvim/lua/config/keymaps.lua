local mapKey = require("utils.keyMapper").mapKey

-- Neotree toggle
mapKey("<c-f>", ":Neotree toggle<cr>")
mapKey("<c-p>", ":Neotree focus<cr>")
mapKey("<S-A-h>", ":FloatermToggle<CR>", "n")
mapKey("<S-A-h>", "<C-\\><C-n>:FloatermToggle<CR>", "t")
mapKey("<S-A-n>", "<C-\\><C-n>:FloatermNew<CR>", "t")
mapKey("<S-A-j>", "<C-\\><C-n>:FloatermNext<CR>", "t")
mapKey("<S-A-p>", "<C-\\><C-n>:FloatermNew python3<CR>", "t")


mapKey("<localleader>e", ":<C-u>MoltenEvaluateVisual<CR>gv", "v")
mapKey("<localleader>i", ":MoltenInit<CR>")
mapKey("<localleader>l", ":MoltenEvaluateLine<CR>")
mapKey("<localleader>r", ":MoltenReevaluateCell<CR>")
mapKey("<localleader>c", ":MoltenInterrupt<CR>")
mapKey("<localleader>d", ":MoltenDelete<CR>")
mapKey("<localleader>o", ":noautocmd MoltenEnterOutput<CR>")

mapKey("<leader>tn",":BufferNext<CR>")
mapKey("<leader>tp",":BufferPrev<CR>")
mapKey("<leader>tf",":BufferPick<CR>")
mapKey("<leader>tc",":BufferClose<CR>")

mapKey("<leader>t1",":BufferGoto 1<CR>")
mapKey("<leader>t2",":BufferGoto 2<CR>")
mapKey("<leader>t3",":BufferGoto 3<CR>")
mapKey("<leader>t4",":BufferGoto 4<CR>")
mapKey("<leader>t5",":BufferGoto 5<CR>")
mapKey("<leader>t6",":BufferGoto 6<CR>")
mapKey("<leader>t7",":BufferGoto 7<CR>")
mapKey("<leader>t8",":BufferGoto 8<CR>")
mapKey("<leader>t9",":BufferGoto 9<CR>")
mapKey("<C-q>", "@q")


mapKey("<leader>c.",":cd %:h<CR>")

vim.api.nvim_exec(
	[[
  autocmd TermOpen * tnoremap <buffer> <C-l> <C-l>
]],
	false
)
