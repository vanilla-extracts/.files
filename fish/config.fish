function fish_greeting
  message_of_the_day
end

for mode in default insert
  bind --mode $mode \cf sessions 
end 
fish_vi_key_bindings
set fish_cursor_default block
set fish_cursor_insert line
set fish_cursor_replace_one underscore
set fish_cursor_visual block

setsid wal -i ~/Images/bg.png 2> /dev/null
ssh-add /home/charlotte/.ssh/id_github_me
set TYPST /home/charlotte/.config/typst_templates
set PATH $PATH:/home/charlotte/.cargo/bin:/home/charlotte/.local/bin:/usr/sbin:/opt/node/bin:/opt/z3-4.12.2-x64-glibc-2.31/bin/
set TYPST_FONT_PATH /usr/share/fonts:/home/charlotte/.fonts
set DOCSOFF /home/charlotte/Documents/docsoff
set LD_LIBRARY_PATH $LD_LIBRARY_PATH:/home/charlotte/.lib
set DEV /home/charlotte/Documents/dev
set EDITOR vim
set VISUAL vim
set CODE_EDITOR nvim
starship init fish | source
alias ls="eza -l --icons=always --group-directories-first --hyperlink"
alias listen="lsof -i -P -n | grep LISTEN"
alias lz="lazygit"
# pnpm
set -gx PNPM_HOME "/home/charlotte/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# opam configuration
source /home/charlotte/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true
