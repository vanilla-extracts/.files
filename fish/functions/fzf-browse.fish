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
        end | fzf)

    switch "$mode"
        case evince
            nohup evince "$selected" &
        case chromium
            nohup chromium-browser "file://$selected" &
        case gimp
            nohup gimp "$selected" &
    end
    exit;
end
