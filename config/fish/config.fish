# Clear fish greeting
set fish_greeting

# Set terminal colors
set -gx TERM xterm-256color

# Theme settings
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# Aliases
alias ls "lsd"
alias la "lsd -A -l"
alias ll "lsd -l -g"
alias g git
if command -qv nvim
    alias vim nvim
end
alias v nvim

# Set editor
set -gx EDITOR nvim

# Path modifications
fish_add_path ~/.local/bin

# Homebrew setup
eval (/usr/local/bin/brew shellenv)
fish_add_path /usr/local/opt/binutils/bin

# Ctags alias
alias ctags (brew --prefix)"/bin/ctags"

# Ruby setup
fish_add_path /usr/local/opt/ruby/bin
status --is-interactive; and rbenv init - fish | source

# Additional PATH modifications
fish_add_path /usr/local/opt/gnu-sed/libexec/gnubin
fish_add_path /usr/local/texlive/2024/bin/universal-darwin

# Additional PATH modifications
fish_add_path $HOME/.local/bin
fish_add_path $HOME/Library/Android/sdk/platform-tools/
fish_add_path $HOME/workspace/tools/ghidra_11.1.1_PUBLIC/

# DYLD_LIBRARY_PATH
set -gx DYLD_LIBRARY_PATH /usr/local/opt/capstone/lib/ $DYLD_LIBRARY_PATH

# bind \e\[A accept-autosuggestion


set -g FZF_PREVIEW_FILE_CMD "bat --style=numbers --color=always --line-range :500"
set -g FZF_LEGACY_KEYBINDINGS 0


bind -k nul accept-autosuggestion
