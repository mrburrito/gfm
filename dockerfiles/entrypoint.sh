#!/bin/sh

WIKI=/wiki

case "$1" in
    run)
        cd ${WIKI}
        gollum --port 80 --no-edit
        ;;
    edit)
        cd ${WIKI}
        gollum --port 80
        ;;
    *)
        $*
        ;;
esac
