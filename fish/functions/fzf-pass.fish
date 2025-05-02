function fzf-pass
    set PASSWORD_STORE_DIR $HOME/.password-store
    set selected \
        (begin
            fd -tf . $PASSWORD_STORE_DIR | sed "s|^$PASSWORD_STORE_DIR/\(.*\)\.gpg\$|\1|"
        end | fzf)

    if [ -z "$selected" ]
        echo Nothing selected
        echo exiting...
        return
    end

    pass "$selected" -c

end
