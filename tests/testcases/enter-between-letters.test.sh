vim-tests:type "$_vim_session" \
    "i" \
    "ab" "escape" "i" "enter" \
    "|" \
    "escape"

tests:eval tmux:cat-screen "$_vim_session"

vim-tests:write-file "$_vim_session" "result"

tests:assert-no-diff "result" <<EXPECTED
a
|b
EXPECTED
