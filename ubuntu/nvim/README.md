### Features
> [!tip] what is lazy-loading
> lazy-loading은 필요한 resource를 필요한 타이밍에 로딩시키는 기술이다.
> 처음부터 모든 resource를 로드하지 않기에 효율적이다.

neovim plugin manager이다.
특징으로는
- UI를 통한 플러그인 관리
- lua 모듈의 자동 캐싱과 bytecode 컴파일을 통한 빠른 시작 시간
- lua 모듈을 통한 자동 lazy-loading, 이벤트/명령어/파일 타입/키 매핑 등에서의 lazy-loading
- missing된 모듈을 자동으로 설치
- 빠른 속도를 위한 비동기 처리
- multiple 파일들을 통한 설정 (분할 설정 가능)
등등, 굉장히 많은 특징들을 가지고 있는 플러그인 관리 프로그램이다.
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
대충 위와 같은 구조로, 예전 같으면 `vimrc`에 다 넣어 놨을 것들을 분할해서 작성할 수 있기에, 굉장히 편리하다.
최상단의 `init.vim`에서는 `config`를 로드한다.
이를 통해, `lua/config`의 `init.vim` 파일이 로드된다.
*loads config*에 적힌 `globals`/`keymaps`/`options`/`autocmds`는 각각 아래와 같은 역할을 한다.
1. globals : 각종 전역 변수들을 설정하는 파일이다.
2. keymaps : keymaps를 설정하는 파일이고, `utils.keyMapper` 파일에서 mapKey를 끌어와서 조금 더 편한 key mapping이 가능하다.
3. options : 기타 다른 기본 설정들을 관리하는 파일이다.
   indent/number/encoding 등 굉장히 기초적인 설정들이 담겨 있다.
4. autocmds 파일은 말 그대로 autocmd를 설정할 수 있는 파일이다.
   자동적으로 실행 되어야 하는 명령어들을 담아 두었다. (clipboard, floaterm issue 관련)
