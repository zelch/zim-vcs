#
# Settings
#

# Log colour scheme has bold yellow commit hash, bold blue author, cyan date, auto ref names
# See https://yadm-scm.com/docs/pretty-formats
typeset -g _yadm_log_fuller_format='%C(bold yellow)commit %H%C(auto)%d%n%C(bold)Author: %C(blue)%an <%ae> %C(cyan)%ai (%ar)%n%C(bold)Commit: %C(blue)%cn <%ce> %C(cyan)%ci (%cr)%C(reset)%n%+B'
typeset -g _yadm_log_oneline_format='%C(bold yellow)%h%C(reset) %s%C(auto)%d%C(reset)'
typeset -g _yadm_log_oneline_medium_format='%C(bold yellow)%h%C(reset) %<(50,trunc)%s %C(bold blue)%an %C(cyan)%as (%ar)%C(auto)%d%C(reset)'
local ymodule_home=${0:A:h}

#
# Aliases
#

local yprefix
zstyle -s ':zim:yadm' aliases-prefix 'yprefix' || yprefix=Y

# Git
alias ${yprefix}='yadm'

# Branch (b)
alias ${yprefix}b='yadm branch'
alias ${yprefix}bc='yadm checkout -b'
alias ${yprefix}bd='yadm checkout --detach'
alias ${yprefix}bl='yadm branch --list -vv'
alias ${yprefix}bL='yadm branch --list -vv --all'
alias ${yprefix}bn='yadm branch --no-contains'
alias ${yprefix}bm='yadm branch --move'
alias ${yprefix}bM='yadm branch --move --force'
alias ${yprefix}bR='yadm branch --force'
alias ${yprefix}bs='yadm show-branch'
alias ${yprefix}bS='yadm show-branch --all'
alias ${yprefix}bu='yadm branch --unset-upstream'
alias ${yprefix}bG='yadm-branch-remote-tracking gone | xargs -r yadm branch --delete --force'
alias ${yprefix}bx='yadm-branch-delete-interactive'
alias ${yprefix}bX='yadm-branch-delete-interactive --force'

# Commit (c)
alias ${yprefix}c='yadm commit --verbose'
alias ${yprefix}ca='yadm commit --verbose --all'
alias ${yprefix}cA='yadm commit --verbose --patch'
alias ${yprefix}cm='yadm commit --message'
alias ${yprefix}co='yadm checkout'
alias ${yprefix}cO='yadm checkout --patch'
alias ${yprefix}cf='yadm commit --amend --reuse-message HEAD'
alias ${yprefix}cF='yadm commit --verbose --amend'
alias ${yprefix}cp='yadm cherry-pick'
alias ${yprefix}cP='yadm cherry-pick --no-commit'
alias ${yprefix}cr='yadm revert'
alias ${yprefix}cR='yadm reset "HEAD^"'
alias ${yprefix}cs='yadm show --stat --patch --pretty=format:"${_yadm_log_fuller_format}"'
alias ${yprefix}cS='yadm commit --verbose -S'
alias ${yprefix}cu='yadm commit --fixup'
alias ${yprefix}cU='yadm commit --squash'
alias ${yprefix}cv='yadm verify-commit'

# Conflict (C)
alias ${yprefix}Cl='yadm --no-pager diff --name-only --diff-filter=U'
alias ${yprefix}Ca="yadm add \$(${yprefix}Cl)"
alias ${yprefix}Ce="yadm mergetool \$(${yprefix}Cl)"
alias ${yprefix}Co='yadm checkout --ours --'
alias ${yprefix}CO="${yprefix}Co \$(${yprefix}Cl)"
alias ${yprefix}Ct='yadm checkout --theirs --'
alias ${yprefix}CT="${yprefix}Ct \$(${yprefix}Cl)"

# Data (d)
alias ${yprefix}d='yadm ls-files'
alias ${yprefix}dc='yadm ls-files --cached'
alias ${yprefix}dx='yadm ls-files --deleted'
alias ${yprefix}dm='yadm ls-files --modified'
alias ${yprefix}du='yadm ls-files --other --exclude-standard'
alias ${yprefix}dk='yadm ls-files --killed'
alias ${yprefix}di='yadm status --porcelain --ignored=matching | sed -n "s/^!! //p"'
alias ${yprefix}dI='yadm ls-files --ignored --exclude-per-directory=.yadmignore --cached'

# Fetch (f)
alias ${yprefix}f='yadm fetch'
alias ${yprefix}fa='yadm fetch --all'
alias ${yprefix}fp='yadm fetch --all --prune'
alias ${yprefix}fc='yadm clone'
alias ${yprefix}fm='yadm pull --no-rebase'
alias ${yprefix}fr='yadm pull --rebase'
alias ${yprefix}fu='yadm pull --ff-only --all --prune'

# Grep (g)
alias ${yprefix}g='yadm grep'
alias ${yprefix}gi='yadm grep --ignore-case'
alias ${yprefix}gl='yadm grep --files-with-matches'
alias ${yprefix}gL='yadm grep --files-without-match'
alias ${yprefix}gv='yadm grep --invert-match'
alias ${yprefix}gw='yadm grep --word-regexp'

# Help (h)
alias ${yprefix}h='yadm help'
alias ${yprefix}hw='yadm help --web'

# Index (i)
alias ${yprefix}ia='yadm add --verbose'
alias ${yprefix}iA='yadm add --patch'
alias ${yprefix}iu='yadm add --verbose --update'
alias ${yprefix}iU='yadm add --verbose --all'
alias ${yprefix}id='yadm diff --no-ext-diff --cached'
alias ${yprefix}iD='yadm diff --no-ext-diff --cached --word-diff'
alias ${yprefix}ir='yadm reset'
alias ${yprefix}iR='yadm reset --patch'
alias ${yprefix}ix='yadm rm --cached -r'
alias ${yprefix}iX='yadm rm --cached -rf'

# Log (l)
alias ${yprefix}l='yadm log --date-order --pretty=format:"${_yadm_log_fuller_format}"'
alias ${yprefix}ls='yadm log --date-order --stat --pretty=format:"${_yadm_log_fuller_format}"'
alias ${yprefix}ld='yadm log --date-order --stat --patch --pretty=format:"${_yadm_log_fuller_format}"'
alias ${yprefix}lf='yadm log --date-order --stat --patch --follow --pretty=format:"${_yadm_log_fuller_format}"'
alias ${yprefix}lo='yadm log --date-order --pretty=format:"${_yadm_log_oneline_format}"'
alias ${yprefix}lO='yadm log --date-order --pretty=format:"${_yadm_log_oneline_medium_format}"'
alias ${yprefix}lg='yadm log --date-order --graph --pretty=format:"${_yadm_log_oneline_format}"'
alias ${yprefix}lG='yadm log --date-order --graph --pretty=format:"${_yadm_log_oneline_medium_format}"'
alias ${yprefix}lv='yadm log --date-order --show-signature --pretty=format:"${_yadm_log_fuller_format}"'
alias ${yprefix}lc='yadm shortlog --summary --numbered --no-merges'
alias ${yprefix}lr='yadm reflog'

# Merge (m)
alias ${yprefix}m='yadm merge'
alias ${yprefix}ma='yadm merge --abort'
alias ${yprefix}mc='yadm merge --continue'
alias ${yprefix}mC='yadm merge --no-commit'
alias ${yprefix}mF='yadm merge --no-ff'
alias ${yprefix}ms='yadm merge --squash'
alias ${yprefix}mS='yadm merge -S'
alias ${yprefix}mv='yadm merge --verify-signatures'
alias ${yprefix}mt='yadm mergetool'

# Push (p)
alias ${yprefix}p='yadm push'
alias ${yprefix}pf='yadm push --force-with-lease'
alias ${yprefix}pF='yadm push --force'
alias ${yprefix}pa='yadm push --all'
alias ${yprefix}pA='yadm push --all && yadm push --tags --no-verify'
alias ${yprefix}pt='yadm push --tags'
alias ${yprefix}pc='yadm push --set-upstream origin "$(yadm-branch-current 2>/dev/null)"'
alias ${yprefix}pp='yadm pull origin "$(yadm-branch-current 2>/dev/null)" && yadm push origin "$(yadm-branch-current 2>/dev/null)"'

# Rebase (r)
alias ${yprefix}r='yadm rebase'
alias ${yprefix}ra='yadm rebase --abort'
alias ${yprefix}rc='yadm rebase --continue'
alias ${yprefix}ri='yadm rebase --interactive --autosquash'
alias ${yprefix}rs='yadm rebase --skip'
alias ${yprefix}rS='yadm rebase --exec "yadm commit --amend --no-edit --no-verify -S"'

# Remote (R)
alias ${yprefix}R='yadm remote'
alias ${yprefix}Rl='yadm remote --verbose'
alias ${yprefix}Ra='yadm remote add'
alias ${yprefix}Rx='yadm remote rm'
alias ${yprefix}Rm='yadm remote rename'
alias ${yprefix}Ru='yadm remote update'
alias ${yprefix}Rp='yadm remote prune'
alias ${yprefix}Rs='yadm remote show'
alias ${yprefix}RS='yadm remote set-url'

# Stash (s)
alias ${yprefix}s='yadm stash'
alias ${yprefix}sa='yadm stash apply'
alias ${yprefix}sx='yadm stash drop'
alias ${yprefix}sX='yadm-stash-clear-interactive'
alias ${yprefix}sl='yadm stash list'
alias ${yprefix}sd='yadm stash show --stat --patch'
alias ${yprefix}sp='yadm stash pop'
alias ${yprefix}sr='yadm-stash-recover'
alias ${yprefix}ss='yadm stash save --include-untracked'
alias ${yprefix}sS='yadm stash save --patch --no-keep-index'
alias ${yprefix}sw='yadm stash save --include-untracked --keep-index'
alias ${yprefix}si='yadm stash push --staged' # requires Git 2.35
alias ${yprefix}su='yadm stash show --patch | yadm apply --reverse'

# Submodule (S)
alias ${yprefix}S='yadm submodule'
alias ${yprefix}Sa='yadm submodule add'
alias ${yprefix}Sf='yadm submodule foreach'
alias ${yprefix}Si='yadm submodule init'
alias ${yprefix}SI='yadm submodule update --init --recursive'
alias ${yprefix}Sl='yadm submodule status'
alias ${yprefix}Sm='yadm-submodule-move'
alias ${yprefix}Ss='yadm submodule sync'
alias ${yprefix}Su='yadm submodule update --remote'
alias ${yprefix}Sx='yadm-submodule-remove'

# Tag (t)
alias ${yprefix}t='yadm tag'
alias ${yprefix}tl='yadm tag --list --sort=-committerdate'
alias ${yprefix}ts='yadm tag --sign'
alias ${yprefix}tv='yadm verify-tag'
alias ${yprefix}tx='yadm tag --delete'

# Main working tree (w)
alias ${yprefix}ws='yadm status --short --branch'
alias ${yprefix}wS='yadm status'
alias ${yprefix}wd='yadm diff --no-ext-diff'
alias ${yprefix}wD='yadm diff --no-ext-diff --word-diff'
alias ${yprefix}wr='yadm reset --soft'
alias ${yprefix}wR='yadm reset --hard'
alias ${yprefix}wc='yadm clean --dry-run'
alias ${yprefix}wC='yadm clean -d --force'
alias ${yprefix}wm='yadm mv'
alias ${yprefix}wM='yadm mv -f'
alias ${yprefix}wx='yadm rm -r'
alias ${yprefix}wX='yadm rm -rf'

# Working trees (W)
alias ${yprefix}W='yadm worktree'
alias ${yprefix}Wa='yadm worktree add'
alias ${yprefix}Wl='yadm worktree list'
alias ${yprefix}Wm='yadm worktree move'
alias ${yprefix}Wp='yadm worktree prune'
alias ${yprefix}Wx='yadm worktree remove'
alias ${yprefix}WX='yadm worktree remove --force'

# Switch (y)
alias ${yprefix}y='yadm switch' # requires Git 2.23
alias ${yprefix}yc='yadm switch --create'
alias ${yprefix}yd='yadm switch --detach'

# Misc
alias ${yprefix}..='cd "$(yadm-root || print .)"'
alias ${yprefix}\?="yadm-alias-lookup ${ymodule_home}"

# Cannot use anon function with local variables, because we're evaluating ${0}
unset ymodule_home yprefix
