function docker-shell
    set tmpfile (mktemp)
    docker build . | tee $tmpfile # todo maybe do a --no-cache option
    set image_id (tail -1 $tmpfile | last-col)
    docker run --interactive --tty $image_id | tee -a (isodatetime).log
end
