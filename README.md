yadm
===

Provides handy YADM aliases and functions.

This is a direct fork of [zimfw/git](https://yadmhub.com/zimfw/git), with git replaced with yadm.

They should coexist nicely.

Many thanks to [Sorin Ionescu](https://github.com/sorin-ionescu) for the
excellent original aliases.

Aliases
-------

### Yadm

  * `Y` is short for `yadm`.

### Branch

  * `Yb` lists, creates, renames, and deletes branches.
  * `Ybc` creates a new branch.
  * `Ybd` detaches *HEAD* at the tip of the current or given branch.
  * `Ybl` lists branches and their commits.
  * `YbL` lists local and remote branches and their commits.
  * `Ybn` lists branches that do not contain a given commit.
  * `Ybm` renames a branch.
  * `YbM` renames a branch even if the new branch name already exists.
  * `YbR` resets a branch even if the branch name already exists.
  * `Ybs` lists branches and their commits with ancestry graphs.
  * `YbS` lists local and remote branches and their commits with ancestry graphs.
  * `Ybu` unsets the remote-tracking information for the current or given branch.
  * `YbG` deletes all local branches tracking remote branches that are gone.
  * `Ybx` deletes a branch.
  * `YbX` deletes a branch irrespective of its merged status.

### Commit

  * `Yc` records changes to the repository.
  * `Yca` commits all modified and deleted files.
  * `YcA` commits all modified and deleted files interactively.
  * `Ycm` commits with a given message.
  * `Yco` checks out a branch or paths to the working tree.
  * `YcO` checks out hunks from the index or the tree interactively.
  * `Ycf` amends the tip of the current branch reusing the same log message as *HEAD*.
  * `YcF` amends the tip of the current branch.
  * `Ycp` applies changes introduced by existing commits.
  * `YcP` applies changes introduced by existing commits without committing.
  * `Ycr` reverts existing commits by reverting patches and recording new commits.
  * `YcR` removes the *HEAD* commit.
  * `Ycs` shows one or more objects (blobs, trees, tags and commits).
  * `YcS` commits with YPG signature.
  * `Ycu` commits with fixup message using given commit.
  * `YcU` commits with squash message using given commit.
  * `Ycv` verifies the YPG signature of commits.

### Conflict

  * `YCl` lists unmerged files.
  * `YCa` adds unmerged file contents to the index.
  * `YCe` executes merge-tool on all unmerged files.
  * `YCo` checks out our changes for unmerged paths.
  * `YCO` checks out our changes for all unmerged paths.
  * `YCt` checks out their changes for unmerged paths.
  * `YCT` checks out their changes for all unmerged paths.

### Data

  * `Yd` displays information about files in the index and the working tree.
  * `Ydc` lists cached files.
  * `Ydx` lists deleted files.
  * `Ydm` lists modified files.
  * `Ydu` lists untracked files.
  * `Ydk` lists killed files.
  * `Ydi` lists ignored files.
  * `YdI` lists commited files that would be ignored.

### Fetch

  * `Yf` downloads objects and references from another repository.
  * `Yfa` downloads objects and references from all remotes.
  * `Yfp` prunes stale remote-tracking branches and fetches all remotes.
  * `Yfc` clones a repository into a new directory.
  * `Yfm` fetches from and merges with another repository or local branch.
  * `Yfr` fetches from and rebases on top of another repository or local branch.
  * `Yfu` prunes stale remote-tracking branches, fetches all remotes and merges.

### Yrep

  * `Yg` displays lines matching a pattern.
  * `Ygi` displays lines matching a pattern ignoring case.
  * `Ygl` lists files matching a pattern.
  * `YgL` lists files that are not matching a pattern.
  * `Ygv` displays lines not matching a pattern.
  * `Ygw` displays lines matching a pattern at word boundary.

### Help

  * `Yh` displays help information about Yit.
  * `Yhw` displays manual page for the command in the web browser.

### Index

  * `Yia` adds file contents to the index.
  * `YiA` adds file contents to the index interactively.
  * `Yiu` adds file contents to the index (updates all tracked files).
  * `YiU` adds file contents to the index (updates all files).
  * `Yid` displays changes between the index and a named commit (diff).
  * `YiD` displays changes between the index and a named commit (word diff).
  * `Yir` resets the current *HEAD* to the specified state.
  * `YiR` resets the current index interactively.
  * `Yix` removes files from the index (recursively).
  * `YiX` removes files from the index (recursively and forced).

### Log

  * `Yl` displays the log.
  * `Yls` displays the stats log.
  * `Yld` displays the diff log.
  * `Ylf` displays the diff log of a given file, continuing beyond renames.
  * `Ylo` displays the one line log.
  * `YlO` displays the one line log with authors and dates.
  * `Ylg` displays the graph log.
  * `YlG` displays the graph log with authors and dates.
  * `Ylv` displays the log, verifying the YPG signature of commits.
  * `Ylc` displays the commit count for each contributor in descending order.
  * `Ylr` manages reflog information.

### Merge

  * `Ym` joins two or more development histories together.
  * `Yma` aborts the conflict resolution, and reconstructs the pre-merge state.
  * `Ymc` continues the merge after conflicts are resolved.
  * `YmC` performs a merge but does not commit.
  * `YmF` creates a merge commit even if the merge could be resolved as a fast-forward.
  * `Yms` performs a squash merge but does not commit.
  * `YmS` performs a merge and YPG-signs the resulting commit.
  * `Ymv` verifies the YPG signature of the tip commit of the side branch being merged.
  * `Ymt` runs the merge conflict resolution tools to resolve conflicts.

### Push

  * `Yp` updates remote refs along with associated objects.
  * `Ypf` forces a push safely (with "lease").
  * `YpF` forces a push.
  * `Ypa` pushes all branches.
  * `YpA` pushes all branches and tags.
  * `Ypt` pushes all tags.
  * `Ypc` pushes the current branch and adds *origin* as an upstream reference for it.
  * `Ypp` pulls and pushes the current branch from *origin* to *origin*.

### Rebase

  * `Yr` forward-ports local commits to the updated upstream head.
  * `Yra` aborts the rebase, and checks out the original branch.
  * `Yrc` continues the rebase after merge conflicts are resolved.
  * `Yri` makes a list of commits to be rebased and opens the editor.
  * `Yrs` skips the current patch.
  * `YrS` rebases and YPG-signs the commits.

### Remote

  * `YR` manages tracked repositories.
  * `YRl` lists remote names and their URLs.
  * `YRa` adds a new remote.
  * `YRx` removes a remote.
  * `YRm` renames a remote.
  * `YRu` fetches remotes updates.
  * `YRp` prunes all stale remote-tracking branches.
  * `YRs` shows information about a given remote.
  * `YRS` changes URLs for a remote.

### Stash

  * `Ys` stashes the changes of the dirty working directory.
  * `Ysa` applies the changes recorded in a stash to the working directory.
  * `Ysx` drops a stashed state.
  * `YsX` drops all the stashed states.
  * `Ysl` lists stashed states.
  * `Ysd` displays changes between the stash and its original parent.
  * `Ysp` removes and applies a single stashed state from the stash list.
  * `Ysr` recovers a given stashed state.
  * `Yss` stashes the working directory changes, including untracked files.
  * `YsS` stashes the working directory changes interactively.
  * `Ysw` stashes the working directory changes retaining the index.
  * `Ysi` stashes changes in the index retaining the working directory.
  * `Ysu` undoes (reverses) applied changes.

### Submodule

  * `YS` initializes, updates, or inspects submodules.
  * `YSa` adds a given repository as a submodule.
  * `YSf` evaluates a shell command in each of checked out submodules.
  * `YSi` initializes submodules.
  * `YSI` initializes and clones submodules recursively.
  * `YSl` lists the commits of all submodules.
  * `YSm` moves a submodule.
  * `YSs` synchronizes remote URL of submodules to the value specified in `~/.gitmodules`.
  * `YSu` fetches and merges the latest remote changes for all submodules.
  * `YSx` removes a submodule.

### Tag

  * `Yt` creates, lists, deletes or verifies a tag object signed with YPG.
  * `Ytl` lists tags in reverse chronological order (by commit date).
  * `Yts` creates a YPG-signed tag.
  * `Ytv` verifies the YPG signature of tags.
  * `Ytx` deletes tags with given names.

### Main working tree

  * `Yws` displays the working tree status in short format.
  * `YwS` displays the working tree status.
  * `Ywd` displays changes between the working tree and the index (diff).
  * `YwD` displays changes between the working tree and the index (word diff).
  * `Ywr` resets the current *HEAD* to the specified state, preserving the index and working tree.
  * `YwR` resets the current *HEAD*, index and working tree to the specified state.
  * `Ywc` cleans untracked files from the working tree (dry-run).
  * `YwC` cleans untracked files from the working tree.
  * `Ywm` moves or renames files.
  * `YwM` moves or renames files (forced).
  * `Ywx` removes files from the working tree and from the index (recursively).
  * `YwX` removes files from the working tree and from the index (recursively and forced).

### Working trees

  * `YW` manages multiple working trees.
  * `YWa` creates path with a new working tree.
  * `YWl` lists details of all working trees.
  * `YWm` moves a working tree to a new location.
  * `YWp` prunes working tree information.
  * `YWx` removes a working tree.
  * `YWX` removes a working tree (forced).

### Switch

  * `Yy` switches branches.
  * `Yyc` creates a new branch with given name before switching to it.
  * `Yyd` switches to a commit for inspection and discardable experiments.

### Misc

  * `Y..` changes the current directory to the top level of the working tree.
  * `Y?` looks up the aliases defined here with given regular expressions.

Settings
--------

By default, all aliases are defined with an upper case `Y` prefix, as you can
see above. You can use the following zstyle if you wish to customize the prefix
used to generate all aliases:

    zstyle ':zim:yadm' aliases-prefix 'y'

Add the zstyle to the beginning of your `~/.zshrc`, before the modules are
initialized with `source ${ZIM_HOME}/init.zsh`.

Be careful if changing the prefix to lower case `y`, as the generated aliases
can shadow [many](https://yadmhub.com/zimfw/yadm/issues/2) commands.

Functions
---------

  * `yadm-alias-lookup` lists the aliases defined here searching at a given path, by given regular expressions.
  * `yadm-branch-current` displays the current branch.
  * `yadm-branch-delete-interactive` asks for confirmation to also delete the upstream remote branch(es).
  * `yadm-branch-remote-tracking` lists all local branches with none or given remote-tracking status
     (gone, ahead, behind, or ahead behind).
  * `yadm-dir` displays the path to the Yit directory.
  * `yadm-ignore-add` adds any arguments to ~/.config/yadm/ignore (NOTE: You need to configure yadm to use this as an ignore file)
  * `yadm-root` displays the path to the working tree root.
  * `yadm-stash-clear-interactive` asks for confirmation before clearing the stash.
  * `yadm-stash-recover` recovers given dropped stashed states.
  * `yadm-submodule-move` moves a submodule.
  * `yadm-submodule-remove` removes a submodule.
