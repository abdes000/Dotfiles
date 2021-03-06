function vagrant-ssh --argument-names name
    vagrant ssh $name
    or begin
        if vagrant status | grep -E 'poweroff|aborted|not created|saved' >/dev/null
            vagrant up $name
            vagrant ssh
        end
    end
end
