function fzf-browse
    set selected \
        (begin
            fd -tf . $HOME/Documents
            fd -tf . $HOME/.config
        end | fzf)

    if [ -z "$selected" ]
        echo Nothing selected
        echo exiting...
        return
    end

    set mode \
        (begin
            echo "evince"
            echo "open"
            echo "chromium"
            echo "gimp"
            echo "clipboard"
            echo "helix"
        end | fzf)

    switch "$mode"
        case open
            nohup xdg-open $selected &
        case evince
            nohup evince "$selected" &
        case chromium
            nohup chromium-browser "file://$selected" &
        case gimp
            nohup gimp "$selected" &
        case helix
            nohup alacritty -e hx "$selected" &
        case clipboard
            cat "$selected" | wl-copy
    end
    exit
end
