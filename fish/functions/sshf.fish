function sshf
    if [ -z "$argv" ]
        echo "sshf <server> : fallback for mosh"
        return
    end
    mosh $argv --no-init 2>/dev/null || ssh $argv
end
