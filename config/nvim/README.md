### Features
> [!tip] what is lazy-loading
> Lazy-loding loads resources only when they are needed.
> So it is very efficient.

Lazy is neovim plugin manager
it features
- Plugin management with UI
- Auto caching of lua module, Fast startup time with bytecode compile
- Auto lazy-loading(in events, commands, file types, key mappings) through lua modules
- Auto installation missing modules
- Asynchronous processing for faster speed
- Configuration via multiple files (with the option for segmented settings)
etc.
### Installation
```
# file tree

├── init.lua
├── lua
│   ├── config
│   │   ├── autocmds.lua
│   │   ├── globals.lua
│   │   ├── init.lua
│   │   ├── keymaps.lua
│   │   └── options.lua
│   ├── plugins
│   │   ├── aerial.lua
│   │   ├── alpha-nvim.lua
│   │   ├── codeium.lua
│   │   ├── colorscheme.lua
│   │   ├── comment.lua
│   │   ├── conform.lua
│   │   ├── indent-blankline.lua
│   │   ├── lsp.lua
│   │   ├── lualine.lua
│   │   ├── luasnip.lua
│   │   ├── molten.lua
│   │   ├── multicursors.lua
│   │   ├── neo-tree.lua
│   │   ├── nvim-autopairs.lua
│   │   ├── nvim-cmp.lua
│   │   ├── nvim-treesitter.lua
│   │   ├── nvim-ufo.lua
│   │   ├── nvimesweeper.lua
│   │   ├── telescope.lua
│   │   ├── trouble.lua
│   │   ├── vim-floaterm.lua
│   │   └── wezterm.lua
│   └── utils
│       └── keyMapper.lua
└── snippets
    ├── markdown.json
    ├── package.json
    └── python.json

6 directories, 33 files
```

In the top-level init.vim, the config is loaded. Through this, the init.vim file in lua/config is loaded.

What's written under loads config in globals/keymaps/options/autocmds each serve the following roles:

1. globals: This file is responsible for setting various global variables.
2. keymaps: It configures keymaps, and leverages utils.keyMapper file to enable more convenient key mapping.
3. options: It manages other basic settings such as indent, number, encoding, etc., containing fundamental configurations.
4. autocmds file is essentially for configuring autocmds. It houses commands that should be executed automatically. (related to clipboard, floaterm issues)
