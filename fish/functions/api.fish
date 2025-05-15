# Function to find the closest inventory and use it for ansible-playbook
# Overengineered AF
function api
    set inventory \
        (begin
            fd -td inventory ~
        end | fzf)
    if [ -z "$inventory" ]
        echo No ansible inventories found
        echo Exiting...
        return
    end
    echo $inventory
    ansible-playbook --vault-password-file $inventory/.credentials --ask-become-pass -i $inventory $argv
end
