return {
  'Exafunction/codeium.vim',
  event = 'BufEnter',
    config = function()
        vim.keymap.set('i', '<s-a-space>', function() return vim.fn['codeium#Accept']() end, { expr = true })
    end
}

