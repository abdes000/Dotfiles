function sync-repos
    function sync-repo --argument-names repo
        git -C $repo status -sb
        git -C $repo pull
        git -C $repo push
    end

    function draw-line
        seq $COLUMNS | string replace -r '\d+' - | string join ''
    end

    for repo in ~/.config/fish ~/.spacemacs.d ~/.dotfiles ~/.password-store/ ~/.config/karabiner/ ~/forks/reference
        if not dir-exists $repo
            echo $repo not present
            continue
        end
        draw-line
        echo Syncing repository $repo...
        draw-line
        sync-repo $repo
        echo
    end
end
