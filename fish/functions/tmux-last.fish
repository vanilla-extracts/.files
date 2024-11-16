function tmux-last \
    --description "Toggle the last tmux session"

    set tmux_last /tmp/TMUX_LAST
    if [ ! -f $tmux_last ]
        echo "Last session is not yet set"
        return 1
    end

    set session_name (cat $tmux_last)

    __tmux-register-session
    __tmux-maybe-create $session_name /tmp
    __tmux-attach-or-switch $session_name

end
