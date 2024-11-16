function tmux-sessionizer \
    --description "Manage tmux sessions in specific folders with fzf"

    set selected \
        (begin
            fd . $REPO_PATH --exact-depth 3 --type d
            fd . $WORKTREE_PATH --exact-depth 1 --type d
            fd . $PLAYGROUND_PATH --exact-depth 1 --type d
            # Special mode to create a playground
            echo "play"
            echo "dotfiles"
            # Configurable "generators" for other paths
            if [ -n "$TMUX_SESSIONIZER_SOURCE" ]
                eval "$TMUX_SESSIONIZER_SOURCE"
            end
        end 2> /dev/null | sed -e "s|^$HOME|~|" | fzf)

    set selected (echo $selected | sed -e "s|^~|$HOME|")

    if [ -z "$selected" ]
        commandline --function repaint
        return 0
    end

    # derive session name based on selected path
    # dots are meaningful in tmux, remove them
    set session_name (echo $selected | tr . _)

    # fixup special cases, override derived session_name if necessary
    # this should be id for non-special cases
    switch $selected
        case play
            read -P "Give it a name: " name
            if [ -z "$name" ]
                return 0
            end
            set name (snakecase "$name")

            set selected ~/Documents/dev/$name
            set session_name (echo $selected | tr . _)
            mkdir -p $selected

        case dotfiles
            set selected ~/.config/
            set session_name dotfiles
    end

    # effects
    __tmux-register-session $session_name
    __tmux-maybe-create $session_name $selected
    __tmux-attach-or-switch $session_name

end
