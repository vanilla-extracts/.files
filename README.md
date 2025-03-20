# Charlotte Thomas' Dotfiles
Welcome to my dotfiles ~~
Here you will find every config for everything I use and some things I *used* to
use.

## Current config.
On branch `current`

The current configuration is the following:

- WM: niri ([niri/config.kdl](niri/config.kdl))
  - Custom config on top of the default
- App launcher: rofi ([rofi/config.rasi](rofi/config.rasi))
  - Catppuccin mocha
- Status Bar: waybar ([waybar/config](waybar/config))
  - Might change (?)
- Terminal: alacritty ([alacritty.toml](alacritty.toml))
  - I change semi-regularly with kitty
- Prompt: starship ([starship.toml](starship.toml))
  - Modified pure config
- Shell: fish ([fish/config.fish](fish/config.fish))
  - Fish functions: [fish/functions](fish/functions))
    - [fzf-pass](fish/functions/fzf-pass.fish): a script for `pass`
    - [fzf-browse](fish/functions/fzf-browse.fish): a fuzzy file browser
- Locking: hyprlock ([hypr/hyprlock.conf](hypr/hyprlock.conf))
  - With `fprintd`
- Editor: neovim ([nvim/init.lua](nvim/init.lua))
  - LazyVim
  - Mason
  - A lot of plugins and LSPs
- Screen handler: kanshi ([kanshi/config](kanshi/config))
- Scripts
  - backup_password: backups the keepassxc passwords to the NAS
  - clean_dev: clean the $DEV folder (for rust artefacts)
  - gnucash_fr: launches GNUCash in French (it's difficult enough in French...)
  - if_plugged_in_password.sh: A little script to handle whether the Laptop is
  docked and if I can use `fprind` in the `PAM` module.
- Typst Templates: A collection of [Typst](https://typst.app) templates

## Old Configs
These are old configs that I keep around in the git repo but don't use
anymore.
To see the old config go to the other branch, the branch `current` only shows
the current setup.

- WMs:
  - Hyprland ([hypr/hyprland.conf](hypr/hyprland.conf))
  - Sway ([sway/config](sway/config))
  - i3 (you need to look into the old commits)
- Locking:
  - Swaylock-effects
  - Swaylock
  - i3lock
- Status Bar:
  - i3blocks (old commits)
- Terminal: 
  - kitty ([kitty/kitty.conf](kitty/kitty.conf))
- App launcher:
  - wofi ([wofi/style.css](wofi/style.css))
  - dmenu (back when I was using i3, stock config)
- Terminal multiplexers:
  - zellij ([zellij/config.kdl](zellij/config.kdl))
  - tmux (on the old commits)
- Old scripts:
  - backup_to_nas: I switched to restic
  - check_and_backup_nas: I switched to restic
  - cool_swaylock: A lock-screen script for `swaylock-effects`
  - inhibited_swaylock: A script to avoid locking the screen in the middle of a
    movie
  - initialise_typst: A script to automatically create a git repo and create a
  symlink to the templates
  - launch_docker_language_tool: A script to launch the docker-compose of
  language_tool before I switched to `podman`
  - message_of_the_day: A python script to display a MOTD
  - sessions: a Tmux then a Zellij session manager
  - showbatt: a script to show the battery (used in i3blocks)
  - window_switcher.sh: a script to use fuzzel as a window switcher
