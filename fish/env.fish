set TYPST $HOME/.config/typst_templates
fish_add_path $HOME/.cargo/bin
fish_add_path /opt/node/bin
fish_add_path /opt/localsend
fish_add_path $HOME/go/bin
fish_add_path $HOME/.local/bin
set -x TYPST_FONT_PATH /usr/share/fonts:$HOME/.fonts
set DOCSOFF $HOME/Documents/docsoff
set -x LD_LIBRARY_PATH
set DEV $HOME/Documents/dev
set -x CONFIG $HOME/.config
set -x EDITOR hx
set -x VISUAL hx
set -x CODE_EDITOR hx
set -x SUDO_EDITOR hx
set -x SYSTEMD_EDITOR hx
set -x LEDGER_FILE $DOCSOFF/budget/hledger.journal
