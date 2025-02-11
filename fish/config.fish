function fish_greeting
end

for mode in default insert
  bind --mode $mode \cf sessions 
end 
fish_vi_key_bindings
set fish_cursor_default block
set fish_cursor_insert line
set fish_cursor_replace_one underscore
set fish_cursor_visual block
set sponge_regex_patterns '^rm -rf \*$'
set sponge_delay 0
#setsid wal -i ~/Images/bg.png 2> /dev/null
ssh-add $HOME/.ssh/id_github_me 2> /dev/null
jump shell fish | source

set TYPST $HOME/.config/typst_templates
set PATH $PATH:$HOME/.cargo/bin:$HOME/.local/bin:/usr/sbin:/opt/node/bin:/opt/z3-4.12.2-x64-glibc-2.31/bin/:$HOME/go/bin
set -x TYPST_FONT_PATH /usr/share/fonts:$HOME/.fonts
set DOCSOFF $HOME/Documents/docsoff
set -x LD_LIBRARY_PATH $LD_LIBRARY_PATH:$HOME/.lib
set DEV $HOME/Documents/dev
set -x EDITOR vim
set -x VISUAL vim
set -x CODE_EDITOR nvim
set -x LEDGER_FILE $DOCSOFF/budget/hledger.journal
starship init fish | source

alias ls="eza -l --icons=always --group-directories-first --hyperlink"
alias listen="lsof -i -P -n | grep LISTEN"
alias lz="lazygit"
alias girl="man"
# pnpm

set -gx PNPM_HOME "$HOME/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# opam configuration
source $HOME/credentials.fish
#source $HOME/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true

function __jump_add --on-variable PWD
  status --is-command-substitution; and return
  jump chdir
end

function __jump_hint
  set -l term (string replace -r '^j ' '' -- (commandline -cp))
  jump hint "$term"
end

function j
  set -l dir (jump cd "$argv")
  test -d "$dir"; and cd "$dir"
end

complete --command j --exclusive --arguments '(__jump_hint)'
source /home/charlotte/.cargo/env.fish
