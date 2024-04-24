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

├── UltiSnips
│   └── python.snippets
├── coc-settings.json
├── init.lua
└── lua
    ├── config
    │   ├── autocmds.lua
    │   ├── globals.lua
    │   ├── init.lua
    │   ├── keymaps.lua
    │   └── options.lua
    ├── plugins
    │   ├── aerial.lua
    │   ├── coc.lua
    │   ├── colorscheme.lua
    │   ├── comment.lua
    │   ├── indent-blankline.lua
    │   ├── lualine.lua
    │   ├── neo-tree.lua
    │   ├── nvim-autopairs.lua
    │   ├── nvim-treesitter.lua
    │   ├── telescope.lua
    │   └── vim-floaterm.lua
    └── utils
        └── keyMapper.lua

5 directories, 20 files 
```
In the top-level init.vim, the config is loaded. Through this, the init.vim file in lua/config is loaded.

What's written under loads config in globals/keymaps/options/autocmds each serve the following roles:

1. globals: This file is responsible for setting various global variables.
2. keymaps: It configures keymaps, and leverages utils.keyMapper file to enable more convenient key mapping.
3. options: It manages other basic settings such as indent, number, encoding, etc., containing fundamental configurations.
4. autocmds file is essentially for configuring autocmds. It houses commands that should be executed automatically. (related to clipboard, floaterm issues)
