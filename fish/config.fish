function fish_greeting
end

for mode in default insert
    bind --mode $mode \cf sessions
end

source $HOME/credentials.fish
source $HOME/.config/fish/set.fish
source $HOME/.config/fish/fish_aliases.fish
source $HOME/.config/fish/env.fish
source $HOME/.cargo/env.fish
source $HOME/.config/fish/jump.fish
source $HOME/.config/fish/pnpm.fish

jump shell fish | source
starship init fish | source
