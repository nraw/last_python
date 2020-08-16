#!/usr/bin/env sh
SELECTION=$(sqlite3 ~/.ipython/profile_default/history.sqlite "SELECT session, line, replace(source, '
', '') FROM history ORDER BY session DESC, line DESC;" | fzf)
SESSION=$(echo $SELECTION | cut -d'|' -f 1)
LINE=$(echo $SELECTION | cut -d'|' -f 2)
sqlite3 ~/.ipython/profile_default/history.sqlite "SELECT source FROM history where session = "$SESSION" and line = "$LINE";"
