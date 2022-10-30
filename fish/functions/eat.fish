function eat --argument dir
    for f in (find $dir -maxdepth 1 -not -path $dir)
        rsync --archive --remove-source-files --delete $f .
    end
    rmdir $dir
end
