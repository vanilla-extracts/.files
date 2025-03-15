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
            echo "chromium"
            echo "gimp"
            echo "clipboard"
        end | fzf)

    switch "$mode"
        case evince
            nohup evince "$selected" &
        case chromium
            nohup chromium-browser "file://$selected" &
        case gimp
            nohup gimp "$selected" &
        case clipboard
            cat "$selected" | wl-copy
    end
    exit;
end
