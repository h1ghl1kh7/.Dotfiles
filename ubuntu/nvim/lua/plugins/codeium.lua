return {
  'Exafunction/codeium.vim',
  event = 'BufEnter',
    config = function()
        vim.keymap.set('i', '<c-space>', function() return vim.fn['codeium#Accept']() end, { expr = true })
    end
}
