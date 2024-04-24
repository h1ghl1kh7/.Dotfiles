return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require ("lualine").setup({
            options = {
                theme = "dracula-nvim"
            },
            sections = {
                lualine_y = {
                    {
                        "aerial",
                        sep = " ) ",
                        depth = nil,
                        dense = false,
                        dense_sep = ".",
                        colored= true
                    },
                },
            },
        })
    end
}
