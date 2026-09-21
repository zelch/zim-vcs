#
# Settings
#

# Log colour scheme has bold yellow commit hash, bold blue author, cyan date, auto ref names
# See https://git-scm.com/docs/pretty-formats
typeset -g _vcs_log_fuller_format='%C(bold yellow)commit %H%C(auto)%d%n%C(bold)Author: %C(blue)%an <%ae> %C(cyan)%ai (%ar)%n%C(bold)Commit: %C(blue)%cn <%ce> %C(cyan)%ci (%cr)%C(reset)%n%+B'
typeset -g _vcs_log_oneline_format='%C(bold yellow)%h%C(reset) %s%C(auto)%d%C(reset)'
typeset -g _vcs_log_oneline_medium_format='%C(bold yellow)%h%C(reset) %<(50,trunc)%s %C(bold blue)%an %C(cyan)%as (%ar)%C(auto)%d%C(reset)'
local vmodule_home=${0:A:h}
local vinstance=${vmodule_home:t}

#
# Aliases
#

# The command to run (e.g. 'git', 'yadm', ...) defaults to this module
# instance's name, so loading the module twice with different --name values
# (e.g. --name git and --name yadm) gets you both sets of aliases at once.
# Override with: zstyle ':zim:vcs:<instance-name>' cmd '<command>'
local vcmd
zstyle -s ":zim:vcs:${vinstance}" cmd 'vcmd' || vcmd=${vinstance}

# The alias prefix defaults to the upper case first letter of the command.
# Override with: zstyle ':zim:vcs:<instance-name>' aliases-prefix '<prefix>'
local vprefix
zstyle -s ":zim:vcs:${vinstance}" aliases-prefix 'vprefix' || vprefix=${(U)vcmd[1]}


# Command
alias ${vprefix}="${vcmd}"

# Branch (b)
alias ${vprefix}b="${vcmd} branch"
alias ${vprefix}bc="${vcmd} checkout -b"
alias ${vprefix}bd="${vcmd} checkout --detach"
alias ${vprefix}bl="${vcmd} branch --list -vv"
alias ${vprefix}bL="${vcmd} branch --list -vv --all"
alias ${vprefix}bn="${vcmd} branch --no-contains"
alias ${vprefix}bm="${vcmd} branch --move"
alias ${vprefix}bM="${vcmd} branch --move --force"
alias ${vprefix}bR="${vcmd} branch --force"
alias ${vprefix}bs="${vcmd} show-branch"
alias ${vprefix}bS="${vcmd} show-branch --all"
alias ${vprefix}bu="${vcmd} branch --unset-upstream"
alias ${vprefix}bG="vcs-branch-remote-tracking ${vcmd} gone | xargs -r ${vcmd} branch --delete --force"
alias ${vprefix}bx="vcs-branch-delete-interactive ${vcmd}"
alias ${vprefix}bX="vcs-branch-delete-interactive ${vcmd} --force"

# Commit (c)
alias ${vprefix}c="${vcmd} commit --verbose"
alias ${vprefix}ca="${vcmd} commit --verbose --all"
alias ${vprefix}cA="${vcmd} commit --verbose --patch"
alias ${vprefix}cm="${vcmd} commit --message"
alias ${vprefix}co="${vcmd} checkout"
alias ${vprefix}cO="${vcmd} checkout --patch"
alias ${vprefix}cf="${vcmd} commit --amend --reuse-message HEAD"
alias ${vprefix}cF="${vcmd} commit --verbose --amend"
alias ${vprefix}cp="${vcmd} cherry-pick"
alias ${vprefix}cP="${vcmd} cherry-pick --no-commit"
alias ${vprefix}cr="${vcmd} revert"
alias ${vprefix}cR="${vcmd}"' reset "HEAD^"'
alias ${vprefix}cs="${vcmd}"' show --stat --patch --pretty=format:"${_vcs_log_fuller_format}"'
alias ${vprefix}cS="${vcmd} commit --verbose -S"
alias ${vprefix}cu="${vcmd} commit --fixup"
alias ${vprefix}cU="${vcmd} commit --squash"
alias ${vprefix}cv="${vcmd} verify-commit"

# Conflict (C)
alias ${vprefix}Cl="${vcmd} --no-pager diff --name-only --diff-filter=U"
alias ${vprefix}Ca="${vcmd}"' add $('"${vprefix}"'Cl)'
alias ${vprefix}Ce="${vcmd}"' mergetool $('"${vprefix}"'Cl)'
alias ${vprefix}Co="${vcmd} checkout --ours --"
alias ${vprefix}CO="${vprefix}"'Co $('"${vprefix}"'Cl)'
alias ${vprefix}Ct="${vcmd} checkout --theirs --"
alias ${vprefix}CT="${vprefix}"'Ct $('"${vprefix}"'Cl)'

# Data (d)
alias ${vprefix}d="${vcmd} ls-files"
alias ${vprefix}dc="${vcmd} ls-files --cached"
alias ${vprefix}dx="${vcmd} ls-files --deleted"
alias ${vprefix}dm="${vcmd} ls-files --modified"
alias ${vprefix}du="${vcmd} ls-files --other --exclude-standard"
alias ${vprefix}dk="${vcmd} ls-files --killed"
alias ${vprefix}di="${vcmd}"' status --porcelain --ignored=matching | sed -n "s/^!! //p"'
alias ${vprefix}dI="${vcmd} ls-files --ignored --exclude-per-directory=.gitignore --cached"

# Fetch (f)
alias ${vprefix}f="${vcmd} fetch"
alias ${vprefix}fa="${vcmd} fetch --all"
alias ${vprefix}fp="${vcmd} fetch --all --prune"
alias ${vprefix}fc="${vcmd} clone"
alias ${vprefix}fm="${vcmd} pull --no-rebase"
alias ${vprefix}fr="${vcmd} pull --rebase"
alias ${vprefix}fu="${vcmd} pull --ff-only --all --prune"

# Grep (g)
alias ${vprefix}g="${vcmd} grep"
alias ${vprefix}gi="${vcmd} grep --ignore-case"
alias ${vprefix}gl="${vcmd} grep --files-with-matches"
alias ${vprefix}gL="${vcmd} grep --files-without-match"
alias ${vprefix}gv="${vcmd} grep --invert-match"
alias ${vprefix}gw="${vcmd} grep --word-regexp"

# Help (h)
alias ${vprefix}h="${vcmd} help"
alias ${vprefix}hw="${vcmd} help --web"

# Index (i)
alias ${vprefix}ia="${vcmd} add --verbose"
alias ${vprefix}iA="${vcmd} add --patch"
alias ${vprefix}iu="${vcmd} add --verbose --update"
alias ${vprefix}iU="${vcmd} add --verbose --all"
alias ${vprefix}id="${vcmd} diff --no-ext-diff --cached"
alias ${vprefix}iD="${vcmd} diff --no-ext-diff --cached --word-diff"
alias ${vprefix}ir="${vcmd} reset"
alias ${vprefix}iR="${vcmd} reset --patch"
alias ${vprefix}ix="${vcmd} rm --cached -r"
alias ${vprefix}iX="${vcmd} rm --cached -rf"

# Log (l)
alias ${vprefix}l="${vcmd}"' log --date-order --pretty=format:"${_vcs_log_fuller_format}"'
alias ${vprefix}ls="${vcmd}"' log --date-order --stat --pretty=format:"${_vcs_log_fuller_format}"'
alias ${vprefix}ld="${vcmd}"' log --date-order --stat --patch --pretty=format:"${_vcs_log_fuller_format}"'
alias ${vprefix}lf="${vcmd}"' log --date-order --stat --patch --follow --pretty=format:"${_vcs_log_fuller_format}"'
alias ${vprefix}lo="${vcmd}"' log --date-order --pretty=format:"${_vcs_log_oneline_format}"'
alias ${vprefix}lO="${vcmd}"' log --date-order --pretty=format:"${_vcs_log_oneline_medium_format}"'
alias ${vprefix}lg="${vcmd}"' log --date-order --graph --pretty=format:"${_vcs_log_oneline_format}"'
alias ${vprefix}lG="${vcmd}"' log --date-order --graph --pretty=format:"${_vcs_log_oneline_medium_format}"'
alias ${vprefix}lv="${vcmd}"' log --date-order --show-signature --pretty=format:"${_vcs_log_fuller_format}"'
alias ${vprefix}lc="${vcmd} shortlog --summary --numbered --no-merges"
alias ${vprefix}lr="${vcmd} reflog"

# Merge (m)
alias ${vprefix}m="${vcmd} merge"
alias ${vprefix}ma="${vcmd} merge --abort"
alias ${vprefix}mc="${vcmd} merge --continue"
alias ${vprefix}mC="${vcmd} merge --no-commit"
alias ${vprefix}mF="${vcmd} merge --no-ff"
alias ${vprefix}ms="${vcmd} merge --squash"
alias ${vprefix}mS="${vcmd} merge -S"
alias ${vprefix}mv="${vcmd} merge --verify-signatures"
alias ${vprefix}mt="${vcmd} mergetool"

# Push (p)
alias ${vprefix}p="${vcmd} push"
alias ${vprefix}pf="${vcmd} push --force-with-lease"
alias ${vprefix}pF="${vcmd} push --force"
alias ${vprefix}pa="${vcmd} push --all"
alias ${vprefix}pA="${vcmd} push --all && ${vcmd} push --tags --no-verify"
alias ${vprefix}pt="${vcmd} push --tags"
alias ${vprefix}pc="${vcmd}"' push --set-upstream origin "$(vcs-branch-current '"${vcmd}"' 2>/dev/null)"'
alias ${vprefix}pp="${vcmd}"' pull origin "$(vcs-branch-current '"${vcmd}"' 2>/dev/null)" && '"${vcmd}"' push origin "$(vcs-branch-current '"${vcmd}"' 2>/dev/null)"'

# Rebase (r)
alias ${vprefix}r="${vcmd} rebase"
alias ${vprefix}ra="${vcmd} rebase --abort"
alias ${vprefix}rc="${vcmd} rebase --continue"
alias ${vprefix}ri="${vcmd} rebase --interactive --autosquash"
alias ${vprefix}rs="${vcmd} rebase --skip"
alias ${vprefix}rS="${vcmd}"' rebase --exec "'"${vcmd}"' commit --amend --no-edit --no-verify -S"'

# Remote (R)
alias ${vprefix}R="${vcmd} remote"
alias ${vprefix}Rl="${vcmd} remote --verbose"
alias ${vprefix}Ra="${vcmd} remote add"
alias ${vprefix}Rx="${vcmd} remote rm"
alias ${vprefix}Rm="${vcmd} remote rename"
alias ${vprefix}Ru="${vcmd} remote update"
alias ${vprefix}Rp="${vcmd} remote prune"
alias ${vprefix}Rs="${vcmd} remote show"
alias ${vprefix}RS="${vcmd} remote set-url"

# Stash (s)
alias ${vprefix}s="${vcmd} stash"
alias ${vprefix}sa="${vcmd} stash apply"
alias ${vprefix}sx="${vcmd} stash drop"
alias ${vprefix}sX="vcs-stash-clear-interactive ${vcmd}"
alias ${vprefix}sl="${vcmd} stash list"
alias ${vprefix}sd="${vcmd} stash show --stat --patch"
alias ${vprefix}sp="${vcmd} stash pop"
alias ${vprefix}sr="vcs-stash-recover ${vcmd}"
alias ${vprefix}ss="${vcmd} stash save --include-untracked"
alias ${vprefix}sS="${vcmd} stash save --patch --no-keep-index"
alias ${vprefix}sw="${vcmd} stash save --include-untracked --keep-index"
alias ${vprefix}si="${vcmd} stash push --staged" # requires Git 2.35
alias ${vprefix}su="${vcmd}"' stash show --patch | '"${vcmd}"' apply --reverse'

# Submodule (S)
alias ${vprefix}S="${vcmd} submodule"
alias ${vprefix}Sa="${vcmd} submodule add"
alias ${vprefix}Sf="${vcmd} submodule foreach"
alias ${vprefix}Si="${vcmd} submodule init"
alias ${vprefix}SI="${vcmd} submodule update --init --recursive"
alias ${vprefix}Sl="${vcmd} submodule status"
alias ${vprefix}Sm="vcs-submodule-move ${vcmd}"
alias ${vprefix}Ss="${vcmd} submodule sync"
alias ${vprefix}Su="${vcmd} submodule update --remote"
alias ${vprefix}Sx="vcs-submodule-remove ${vcmd}"

# Tag (t)
alias ${vprefix}t="${vcmd} tag"
alias ${vprefix}tl="${vcmd} tag --list --sort=-committerdate"
alias ${vprefix}ts="${vcmd} tag --sign"
alias ${vprefix}tv="${vcmd} verify-tag"
alias ${vprefix}tx="${vcmd} tag --delete"

# Main working tree (w)
alias ${vprefix}ws="${vcmd} status --short --branch"
alias ${vprefix}wS="${vcmd} status"
alias ${vprefix}wd="${vcmd} diff --no-ext-diff"
alias ${vprefix}wD="${vcmd} diff --no-ext-diff --word-diff"
alias ${vprefix}wr="${vcmd} reset --soft"
alias ${vprefix}wR="${vcmd} reset --hard"
alias ${vprefix}wc="${vcmd} clean --dry-run"
alias ${vprefix}wC="${vcmd} clean -d --force"
alias ${vprefix}wm="${vcmd} mv"
alias ${vprefix}wM="${vcmd} mv -f"
alias ${vprefix}wx="${vcmd} rm -r"
alias ${vprefix}wX="${vcmd} rm -rf"

# Working trees (W)
alias ${vprefix}W="${vcmd} worktree"
alias ${vprefix}Wa="${vcmd} worktree add"
alias ${vprefix}Wl="${vcmd} worktree list"
alias ${vprefix}Wm="${vcmd} worktree move"
alias ${vprefix}Wp="${vcmd} worktree prune"
alias ${vprefix}Wx="${vcmd} worktree remove"
alias ${vprefix}WX="${vcmd} worktree remove --force"

# Switch (y)
alias ${vprefix}y="${vcmd} switch" # requires Git 2.23
alias ${vprefix}yc="${vcmd} switch --create"
alias ${vprefix}yd="${vcmd} switch --detach"

# Misc
alias ${vprefix}..='cd "$(vcs-root '"${vcmd}"' || print .)"'
alias ${vprefix}\?="vcs-alias-lookup ${vmodule_home} ${vprefix}"

# Cannot use anon function with local variables, because we're evaluating ${0}
unset vmodule_home vinstance vcmd vprefix
