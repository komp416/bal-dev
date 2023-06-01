Command-line script to move generated static files from the dist directory to the public directory.

copy-assets.sh

This script will:

Sync files from dist/ to public/ with -a option, which stands for "archive" and syncs directories recursively, preserves symbolic links, preserves permissions, preserves modification times, preserves group, preserves owner, preserves device files and preserves special files.
Remove files from the destination directory (public/) that no longer exist in the source directory (dist/) with --delete option.
-v option stands for "verbose" and makes rsync print what it's doing.
With this modification, the PHP scripts that are not in the dist directory will not be touched. This script will only replace the files in public/ that have the same name as files in dist/.

As before, make this script executable by running chmod +x copy-assets.sh.

Please note that rsync is a standard utility in Unix-like systems, but if you're on Windows, you need to use it inside a WSL (Windows Subsystem for Linux), Git Bash, or similar environment.