#!/bin/bash

BASE="Git"

mkdir -p "$BASE"

sections=(
"00-Overview"
"01-Installation-and-Configuration"
"02-Core-Concepts"
"03-Basic-Workflow"
"04-Files-and-Changes"
"05-Commits"
"06-Branches"
"07-Merging"
"08-Rebase"
"09-Undoing-and-Recovery"
"10-Remote-Repositories"
"11-GitHub-and-Collaboration"
"12-Conflict-Resolution"
"13-Inspection-and-History"
"14-Stashing"
"15-Tags-and-Releases"
"16-Git-Ignore-and-Attributes"
"17-Git-Internals"
"18-Advanced-Commands"
"19-Authentication-and-Security"
"20-Git-Workflows"
"21-Team-Collaboration"
"22-CI-CD"
"23-Troubleshooting"
"24-Best-Practices"
"25-Projects"
"26-Cheat-Sheets"
"27-References"
)

for section in "${sections[@]}"; do
    mkdir -p "$BASE/$section"
done

create_files() {
    local dir="$1"
    shift

    for file in "$@"; do
        touch "$BASE/$dir/$file.md"
    done
}

create_files "00-Overview" \
"What-is-Git" \
"Why-Git" \
"Git-vs-GitHub" \
"Git-vs-GitLab" \
"Version-Control-Systems" \
"Centralized-vs-Distributed-VCS" \
"Git-Ecosystem"

create_files "01-Installation-and-Configuration" \
"Installing-Git" \
"Git-Version" \
"Git-Config" \
"Git-Config-Levels" \
"User-Identity" \
"Default-Branch" \
"Git-Editor" \
"Git-Aliases" \
"Git-Attributes" \
"Git-Ignore" \
"Git-Credentials"

create_files "02-Core-Concepts" \
"Repository" \
"Working-Tree" \
"Staging-Area" \
"Commit" \
"HEAD" \
"Branch" \
"Tag" \
"Remote" \
"Object-Model" \
"Blob" \
"Tree" \
"Commit-Object" \
"Annotated-Tag-Object" \
"SHA-Hash" \
"Content-Addressable-Storage"

create_files "03-Basic-Workflow" \
"git-init" \
"git-clone" \
"git-status" \
"git-add" \
"git-commit" \
"git-log" \
"git-diff" \
"git-show" \
"git-help" \
"Git-Workflow"

create_files "04-Files-and-Changes" \
"Tracking-Files" \
"Untracked-Files" \
"Modified-Files" \
"Staged-Files" \
"Deleted-Files" \
"Renaming-Files" \
"Moving-Files" \
"git-mv" \
"git-rm" \
"git-restore" \
"File-Lifecycle"

create_files "05-Commits" \
"Creating-Commits" \
"Commit-Messages" \
"Atomic-Commits" \
"Amend-Commit" \
"Empty-Commit" \
"Multiple-Authors" \
"Commit-Identity" \
"Commit-Parents" \
"Commit-Graph" \
"Conventional-Commits"

create_files "06-Branches" \
"What-is-a-Branch" \
"Creating-Branches" \
"Switching-Branches" \
"git-switch" \
"git-checkout" \
"Listing-Branches" \
"Renaming-Branches" \
"Deleting-Branches" \
"Tracking-Branches" \
"Upstream-Branches" \
"Branch-Pointers" \
"Remote-Branches" \
"Branch-Workflow"

create_files "07-Merging" \
"What-is-Merge" \
"Fast-Forward-Merge" \
"Three-Way-Merge" \
"Merge-Commit" \
"Merge-Conflicts" \
"Resolving-Conflicts" \
"Abort-Merge" \
"Merge-Strategies" \
"Recursive-Merge" \
"Octopus-Merge" \
"Merge-vs-Rebase"

create_files "08-Rebase" \
"What-is-Rebase" \
"Basic-Rebase" \
"Interactive-Rebase" \
"Rebase-Conflicts" \
"Rebase-Continue" \
"Rebase-Skip" \
"Rebase-Abort" \
"Squashing-Commits" \
"Reordering-Commits" \
"Editing-Commits" \
"Dropping-Commits" \
"Fixup-and-Autosquash" \
"Rebase-Best-Practices"

create_files "09-Undoing-and-Recovery" \
"Undoing-Changes" \
"git-restore" \
"git-reset" \
"Soft-Reset" \
"Mixed-Reset" \
"Hard-Reset" \
"Reset-vs-Revert" \
"git-revert" \
"git-reflog" \
"Recover-Lost-Commits" \
"Recover-Deleted-Branches" \
"Recover-from-Hard-Reset" \
"Abort-Operations" \
"Git-Recovery-Playbook"

create_files "10-Remote-Repositories" \
"What-is-Remote" \
"git-remote" \
"Adding-Remote" \
"Removing-Remote" \
"Renaming-Remote" \
"git-fetch" \
"git-pull" \
"git-push" \
"Fetch-vs-Pull" \
"Push-vs-Fetch" \
"Remote-Tracking-Branches" \
"Upstream" \
"Push-Set-Upstream" \
"Delete-Remote-Branch" \
"Remote-Workflow"

create_files "11-GitHub-and-Collaboration" \
"What-is-GitHub" \
"GitHub-Repository" \
"SSH" \
"HTTPS" \
"Personal-Access-Tokens" \
"Fork" \
"Clone" \
"Pull-Request" \
"Code-Review" \
"Issues" \
"Discussions" \
"Releases" \
"GitHub-Actions" \
"Branch-Protection" \
"Collaborators" \
"Open-Source-Workflow"

create_files "12-Conflict-Resolution" \
"Why-Conflicts-Happen" \
"Merge-Conflict" \
"Rebase-Conflict" \
"Pull-Request-Conflict" \
"Conflict-Markers" \
"Manual-Resolution" \
"git-mergetool" \
"Abort-Conflict" \
"Conflict-Resolution-Workflow"

create_files "13-Inspection-and-History" \
"git-log" \
"git-show" \
"git-diff" \
"git-blame" \
"git-shortlog" \
"git-name-rev" \
"Log-Formatting" \
"Graph-Log" \
"Searching-History" \
"git-grep" \
"Finding-Commits" \
"History-Analysis"

create_files "14-Stashing" \
"What-is-Stash" \
"git-stash" \
"Stash-Push" \
"Stash-List" \
"Stash-Show" \
"Stash-Apply" \
"Stash-Pop" \
"Stash-Drop" \
"Stash-Clear" \
"Stash-Workflow"

create_files "15-Tags-and-Releases" \
"What-is-Tag" \
"Lightweight-Tags" \
"Annotated-Tags" \
"Creating-Tags" \
"Listing-Tags" \
"Deleting-Tags" \
"Pushing-Tags" \
"Semantic-Versioning" \
"Release-Workflow"

create_files "16-Git-Ignore-and-Attributes" \
".gitignore" \
"Gitignore-Patterns" \
"Global-Gitignore" \
"Negation-Patterns" \
".gitattributes" \
"Line-Endings" \
"CRLF-vs-LF" \
"Binary-Files" \
"Git-LFS"

create_files "17-Git-Internals" \
"Git-Architecture" \
".git-Directory" \
"HEAD-File" \
"Refs" \
"Heads" \
"Tags-Refs" \
"Remotes-Refs" \
"Objects-Directory" \
"Blob-Objects" \
"Tree-Objects" \
"Commit-Objects" \
"Tag-Objects" \
"Object-Database" \
"Index" \
"Packfiles" \
"Garbage-Collection" \
"git-cat-file" \
"git-ls-tree" \
"git-hash-object" \
"git-write-tree" \
"git-read-tree" \
"git-update-ref"

create_files "18-Advanced-Commands" \
"git-cherry-pick" \
"git-bisect" \
"git-worktree" \
"git-submodule" \
"git-subtree" \
"git-filter-repo" \
"git-replace" \
"git-notes" \
"git-rerere" \
"git-range-diff" \
"git-format-patch" \
"git-am" \
"git-apply"

create_files "19-Authentication-and-Security" \
"SSH-Authentication" \
"HTTPS-Authentication" \
"SSH-Keys" \
"Credential-Manager" \
"Signing-Commits" \
"GPG" \
"SSH-Signing" \
"Signed-Tags" \
"Secret-Management" \
"Removing-Secrets-from-History" \
"Git-Security-Best-Practices"

create_files "20-Git-Workflows" \
"Basic-Workflow" \
"Feature-Branch-Workflow" \
"GitHub-Flow" \
"Git-Flow" \
"Trunk-Based-Development" \
"Forking-Workflow" \
"Release-Workflow" \
"Choosing-a-Workflow"

create_files "21-Team-Collaboration" \
"Team-Branches" \
"Pull-Requests" \
"Code-Review" \
"Merge-Policies" \
"Commit-Conventions" \
"Branch-Naming" \
"Protected-Branches" \
"Conflict-Management" \
"Keeping-Branches-Updated" \
"Team-Git-Workflow"

create_files "22-CI-CD" \
"Git-and-CI-CD" \
"GitHub-Actions" \
"GitLab-CI" \
"Pipelines" \
"Automated-Testing" \
"Build-Automation" \
"Deployment" \
"Release-Automation"

create_files "23-Troubleshooting" \
"Common-Git-Errors" \
"Non-Fast-Forward" \
"Detached-HEAD" \
"Merge-Conflicts" \
"Push-Rejected" \
"Authentication-Errors" \
"Diverged-Branches" \
"Unrelated-Histories" \
"Wrong-Branch" \
"Lost-Commit" \
"Git-Debugging"

create_files "24-Best-Practices" \
"Commit-Best-Practices" \
"Branch-Best-Practices" \
"Pull-Request-Best-Practices" \
"Repository-Structure" \
"Gitignore-Best-Practices" \
"History-Best-Practices" \
"Security-Best-Practices" \
"Git-Best-Practices"

create_files "25-Projects" \
"01-First-Git-Repository" \
"02-Local-Workflow" \
"03-Branching" \
"04-Merge-Conflict" \
"05-Rebase" \
"06-Remote-Repository" \
"07-GitHub-Project" \
"08-Pull-Request" \
"09-Team-Collaboration" \
"10-Recovery-Project" \
"11-Complete-Git-Project"

create_files "26-Cheat-Sheets" \
"Git-Basic-Commands" \
"Git-Branch-Commands" \
"Git-Remote-Commands" \
"Git-Undo-Commands" \
"Git-Inspection-Commands" \
"Git-Stash-Commands" \
"Git-Rebase-Commands" \
"Git-Recovery-Commands" \
"Git-Cheat-Sheet"

create_files "27-References" \
"Git-Glossary" \
"Git-Command-Index" \
"Git-Configuration-Reference" \
"Git-Environment-Variables" \
"Git-References"

echo "Git knowledge structure created successfully!"
