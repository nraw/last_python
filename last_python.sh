#!/usr/bin/env sh
last=${1:-1}
sqlite3 ~/.ipython/profile_default/history.sqlite "select source from history limit 1 offset (select count(*) -$last from history);"
