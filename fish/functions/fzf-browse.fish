function fzf-browse
    set selected \
        (begin
            fd -tf . $HOME
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
        end | fzf)

    switch "$mode"
        case open
            nohup xdg-open "$selected" & 2> /dev/null > /dev/null
        case evince
            nohup evince "$selected" & 2> /dev/null > /dev/null
        case chromium
            nohup chromium-browser "file://$selected" & 2> /dev/null > /dev/null
        case gimp
            nohup gimp "$selected" & 2> /dev/null > /dev/null
        case clipboard
            cat "$selected" | wl-copy
    end
    exit;
end
