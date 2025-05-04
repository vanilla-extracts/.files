# fd find all playbooks and show them in a fuzzy finder
function play
    set playbook \
        (begin
            fd -tf .playbook.yaml ~
        end | fzf)
    if [ -z "$playbook" ]
        echo No ansible playbooks found
        echo Exiting...
        return
    end
    api $playbook
end
