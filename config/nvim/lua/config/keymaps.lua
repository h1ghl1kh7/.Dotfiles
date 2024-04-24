local mapKey = require("utils.keyMapper").mapKey

-- Neotree toggle
mapKey('<c-p>',':Neotree focus<cr>')
mapKey("<S-A-h>",":FloatermToggle<CR>","n")
mapKey("<S-A-h>","<C-\\><C-n>:FloatermToggle<CR>","t")
mapKey("<S-A-n>","<C-\\><C-n>:FloatermNew<CR>","t")
mapKey("<S-A-j>","<C-\\><C-n>:FloatermNext<CR>","t")
mapKey("<S-A-p>","<C-\\><C-n>:FloatermNew python3<CR>","t")

mapKey("<leader>ae",":AerialToggle<CR>")

mapKey("<localleader>r",":<C-u>MoltenEvaluateVisual<CR>gv","v")
mapKey("<localleader>i",":<C-u>MoltenInit<CR>")
mapKey("<localleader>l",":<C-u>MoltenEvaluateLine<CR>")

vim.api.nvim_exec([[
  autocmd TermOpen * tnoremap <buffer> <C-l> <C-l>
]], false)

