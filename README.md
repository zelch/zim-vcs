zim-vcs
=======

Provides handy Git-family aliases and functions for [zimfw](https://zimfw.org),
for any git-compatible command such as `git` itself or [yadm](https://yadm.io).

This is a fork of [zimfw/git](https://github.com/zimfw/git), generalized so
the underlying command and alias prefix are both configurable. Works with no
configuration, defaulting to plain `git`. Load the module again with its own
`--name` and a `cmd` zstyle to also get aliases for another command (e.g.
`yadm`) at the same time. See Settings below.

Many thanks to [Sorin Ionescu](https://github.com/sorin-ionescu) for the
excellent original aliases.

Aliases
-------

Below, `` `‹suffix›` `` bullets describe the alias `<prefix><suffix>`, where
`<prefix>` is the configured alias prefix (see Settings). E.g. with the
default prefix for `git`, `` `b` `` below is the alias `Gb`; for `yadm`,
it's `Yb`.

### Command

  * `` is short for the configured command.

### Branch

  * `b` lists, creates, renames, and deletes branches.
  * `bc` creates a new branch.
  * `bd` detaches *HEAD* at the tip of the current or given branch.
  * `bl` lists branches and their commits.
  * `bL` lists local and remote branches and their commits.
  * `bn` lists branches that do not contain a given commit.
  * `bm` renames a branch.
  * `bM` renames a branch even if the new branch name already exists.
  * `bR` resets a branch even if the branch name already exists.
  * `bs` lists branches and their commits with ancestry graphs.
  * `bS` lists local and remote branches and their commits with ancestry graphs.
  * `bu` unsets the remote-tracking information for the current or given branch.
  * `bG` deletes all local branches tracking remote branches that are gone.
  * `bx` deletes a branch.
  * `bX` deletes a branch irrespective of its merged status.

### Commit

  * `c` records changes to the repository.
  * `ca` commits all modified and deleted files.
  * `cA` commits all modified and deleted files interactively.
  * `cm` commits with a given message.
  * `co` checks out a branch or paths to the working tree.
  * `cO` checks out hunks from the index or the tree interactively.
  * `cf` amends the tip of the current branch reusing the same log message as *HEAD*.
  * `cF` amends the tip of the current branch.
  * `cp` applies changes introduced by existing commits.
  * `cP` applies changes introduced by existing commits without committing.
  * `cr` reverts existing commits by reverting patches and recording new commits.
  * `cR` removes the *HEAD* commit.
  * `cs` shows one or more objects (blobs, trees, tags and commits).
  * `cS` commits with a GPG signature.
  * `cu` commits with fixup message using given commit.
  * `cU` commits with squash message using given commit.
  * `cv` verifies the GPG signature of commits.

### Conflict

  * `Cl` lists unmerged files.
  * `Ca` adds unmerged file contents to the index.
  * `Ce` executes merge-tool on all unmerged files.
  * `Co` checks out our changes for unmerged paths.
  * `CO` checks out our changes for all unmerged paths.
  * `Ct` checks out their changes for unmerged paths.
  * `CT` checks out their changes for all unmerged paths.

### Data

  * `d` displays information about files in the index and the working tree.
  * `dc` lists cached files.
  * `dx` lists deleted files.
  * `dm` lists modified files.
  * `du` lists untracked files.
  * `dk` lists killed files.
  * `di` lists ignored files.
  * `dI` lists commited files that would be ignored.

### Fetch

  * `f` downloads objects and references from another repository.
  * `fa` downloads objects and references from all remotes.
  * `fp` prunes stale remote-tracking branches and fetches all remotes.
  * `fc` clones a repository into a new directory.
  * `fm` fetches from and merges with another repository or local branch.
  * `fr` fetches from and rebases on top of another repository or local branch.
  * `fu` prunes stale remote-tracking branches, fetches all remotes and merges.

### Grep

  * `g` displays lines matching a pattern.
  * `gi` displays lines matching a pattern ignoring case.
  * `gl` lists files matching a pattern.
  * `gL` lists files that are not matching a pattern.
  * `gv` displays lines not matching a pattern.
  * `gw` displays lines matching a pattern at word boundary.

### Help

  * `h` displays help information about the configured command.
  * `hw` displays manual page for the command in the web browser.

### Index

  * `ia` adds file contents to the index.
  * `iA` adds file contents to the index interactively.
  * `iu` adds file contents to the index (updates all tracked files).
  * `iU` adds file contents to the index (updates all files).
  * `id` displays changes between the index and a named commit (diff).
  * `iD` displays changes between the index and a named commit (word diff).
  * `ir` resets the current *HEAD* to the specified state.
  * `iR` resets the current index interactively.
  * `ix` removes files from the index (recursively).
  * `iX` removes files from the index (recursively and forced).

### Log

  * `l` displays the log.
  * `ls` displays the stats log.
  * `ld` displays the diff log.
  * `lf` displays the diff log of a given file, continuing beyond renames.
  * `lo` displays the one line log.
  * `lO` displays the one line log with authors and dates.
  * `lg` displays the graph log.
  * `lG` displays the graph log with authors and dates.
  * `lv` displays the log, verifying the GPG signature of commits.
  * `lc` displays the commit count for each contributor in descending order.
  * `lr` manages reflog information.

### Merge

  * `m` joins two or more development histories together.
  * `ma` aborts the conflict resolution, and reconstructs the pre-merge state.
  * `mc` continues the merge after conflicts are resolved.
  * `mC` performs a merge but does not commit.
  * `mF` creates a merge commit even if the merge could be resolved as a fast-forward.
  * `ms` performs a squash merge but does not commit.
  * `mS` performs a merge and GPG-signs the resulting commit.
  * `mv` verifies the GPG signature of the tip commit of the side branch being merged.
  * `mt` runs the merge conflict resolution tools to resolve conflicts.

### Push

  * `p` updates remote refs along with associated objects.
  * `pf` forces a push safely (with "lease").
  * `pF` forces a push.
  * `pa` pushes all branches.
  * `pA` pushes all branches and tags.
  * `pt` pushes all tags.
  * `pc` pushes the current branch and adds *origin* as an upstream reference for it.
  * `pp` pulls and pushes the current branch from *origin* to *origin*.

### Rebase

  * `r` forward-ports local commits to the updated upstream head.
  * `ra` aborts the rebase, and checks out the original branch.
  * `rc` continues the rebase after merge conflicts are resolved.
  * `ri` makes a list of commits to be rebased and opens the editor.
  * `rs` skips the current patch.
  * `rS` rebases and GPG-signs the commits.

### Remote

  * `R` manages tracked repositories.
  * `Rl` lists remote names and their URLs.
  * `Ra` adds a new remote.
  * `Rx` removes a remote.
  * `Rm` renames a remote.
  * `Ru` fetches remotes updates.
  * `Rp` prunes all stale remote-tracking branches.
  * `Rs` shows information about a given remote.
  * `RS` changes URLs for a remote.

### Stash

  * `s` stashes the changes of the dirty working directory.
  * `sa` applies the changes recorded in a stash to the working directory.
  * `sx` drops a stashed state.
  * `sX` drops all the stashed states.
  * `sl` lists stashed states.
  * `sd` displays changes between the stash and its original parent.
  * `sp` removes and applies a single stashed state from the stash list.
  * `sr` recovers a given stashed state.
  * `ss` stashes the working directory changes, including untracked files.
  * `sS` stashes the working directory changes interactively.
  * `sw` stashes the working directory changes retaining the index.
  * `si` stashes changes in the index retaining the working directory.
  * `su` undoes (reverses) applied changes.

### Submodule

  * `S` initializes, updates, or inspects submodules.
  * `Sa` adds a given repository as a submodule.
  * `Sf` evaluates a shell command in each of checked out submodules.
  * `Si` initializes submodules.
  * `SI` initializes and clones submodules recursively.
  * `Sl` lists the commits of all submodules.
  * `Sm` moves a submodule.
  * `Ss` synchronizes remote URL of submodules to the value specified in `.gitmodules`.
  * `Su` fetches and merges the latest remote changes for all submodules.
  * `Sx` removes a submodule.

### Tag

  * `t` creates, lists, deletes or verifies a tag object signed with GPG.
  * `tl` lists tags in reverse chronological order (by commit date).
  * `ts` creates a GPG-signed tag.
  * `tv` verifies the GPG signature of tags.
  * `tx` deletes tags with given names.

### Main working tree

  * `ws` displays the working tree status in short format.
  * `wS` displays the working tree status.
  * `wd` displays changes between the working tree and the index (diff).
  * `wD` displays changes between the working tree and the index (word diff).
  * `wr` resets the current *HEAD* to the specified state, preserving the index and working tree.
  * `wR` resets the current *HEAD*, index and working tree to the specified state.
  * `wc` cleans untracked files from the working tree (dry-run).
  * `wC` cleans untracked files from the working tree.
  * `wm` moves or renames files.
  * `wM` moves or renames files (forced).
  * `wx` removes files from the working tree and from the index (recursively).
  * `wX` removes files from the working tree and from the index (recursively and forced).

### Working trees

  * `W` manages multiple working trees.
  * `Wa` creates path with a new working tree.
  * `Wl` lists details of all working trees.
  * `Wm` moves a working tree to a new location.
  * `Wp` prunes working tree information.
  * `Wx` removes a working tree.
  * `WX` removes a working tree (forced).

### Switch

  * `y` switches branches.
  * `yc` creates a new branch with given name before switching to it.
  * `yd` switches to a commit for inspection and discardable experiments.

### Misc

  * `..` changes the current directory to the top level of the working tree.
  * `?` looks up the aliases defined here with given regular expressions.

Settings
--------

By default, with no configuration, this module runs `git` and generates
aliases prefixed with `G` (the upper case first letter of `git`):

    zmodule your-org/zim-vcs

This module can also be loaded more than once, to also get aliases for
another command (e.g. `yadm`) at the same time. Give each extra instance a
distinct `--name` in your `~/.zimrc` matching the command it should run, and
that's all the configuration it needs:

    zmodule your-org/zim-vcs --name yadm

Behind the scenes, the command defaults to the instance's own `--name`. The
unnamed, default instance is named after the module itself (`zim-vcs`),
which isn't a runnable command, so that one defaults to `git` instead. The
alias prefix in turn defaults to the upper case first letter of the
command (`G` for `git`, `Y` for `yadm`). You can override either default
with the following zstyles, scoped to the instance name given to `--name`
(or the module name, if `--name` wasn't given):

    zstyle ':zim:vcs:zim-vcs' cmd 'git'
    zstyle ':zim:vcs:zim-vcs' aliases-prefix 'G'

    zstyle ':zim:vcs:yadm' cmd 'yadm'
    zstyle ':zim:vcs:yadm' aliases-prefix 'Y'

Add the zstyles to the beginning of your `~/.zshrc`, before the modules are
initialized with `source ${ZIM_HOME}/init.zsh`.

Be careful if changing a prefix to a lower case letter, as the generated
aliases can shadow many commands.

Functions
---------

Most of these functions take the underlying command (`git`, `yadm`, ...) as
their first argument, so they work the same regardless of which module
instance's aliases call them.

  * `vcs-alias-lookup <module home> <alias prefix> [pattern...]` lists the
    aliases defined here, searching by given regular expressions.
  * `vcs-branch-current <cmd>` displays the current branch.
  * `vcs-branch-delete-interactive <cmd>` asks for confirmation to also
    delete the upstream remote branch(es).
  * `vcs-branch-remote-tracking <cmd>` lists all local branches with none or
    given remote-tracking status (gone, ahead, behind, or ahead behind).
  * `vcs-dir <cmd>` displays the path to the `.git` directory.
  * `vcs-ignore-add <cmd> <ignore-file> <path...>` adds paths to
    `<ignore-file>` (relative to the working tree root, unless given as an
    absolute or `~`-prefixed path). E.g. for yadm, use
    `~/.config/yadm/ignore` (you need to configure yadm to use this as an
    ignore file).
  * `vcs-root <cmd>` displays the path to the working tree root.
  * `vcs-stash-clear-interactive <cmd>` asks for confirmation before
    clearing the stash.
  * `vcs-stash-recover <cmd>` recovers given dropped stashed states.
  * `vcs-submodule-move <cmd>` moves a submodule.
  * `vcs-submodule-remove <cmd>` removes a submodule.
