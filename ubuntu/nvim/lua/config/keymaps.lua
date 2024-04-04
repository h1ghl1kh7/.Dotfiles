local mapKey = require("utils.keyMapper").mapKey

-- Neotree toggle
mapKey('<c-p>',':Neotree focus<cr>')
mapKey("<S-A-h>",":FloatermToggle<CR>","n")
mapKey("<S-A-h>","<C-\\><C-n>:FloatermToggle<CR>","t")
mapKey("<leader>ae",":AerialToggle<CR>")

vim.api.nvim_exec([[
  autocmd TermOpen * tnoremap <buffer> <C-l> <C-l>
]], false)

