#!/usr/bin/env python
# setup the dotfiles

import sys
import os
from fnmatch import fnmatch

excluded_files = ["Rakefile", "README.rdoc", "LICENSE", "fish", "setup.py", ".git", ".gitignore"]
exclude_regexp = ["*.swp"]
dotless_dirs = ["GNUstep"]
destdir = os.getenv('HOME')

if len(sys.argv) == 2:
    destdir = sys.argv[1]

def match_globs(filename, globlist):
    """Check if a file verifies a list of globs"""
    for glob in globlist:
        if fnmatch(filename, glob):
            return True
    return False

entries = [file for file in os.listdir(".") if file not in excluded_files
                                            and not match_globs(file, exclude_regexp)]

for dentry in entries:
    # For some folders we don't need to stick a "." at the
    # beginning
    if dentry in dotless_dirs:
        linkpath = os.path.join(destdir, dentry)
    else:
        linkpath = os.path.join(destdir, "." + dentry)
    if not os.path.exists(linkpath):
        str ="ln -s %s %s" % (os.path.realpath(dentry), linkpath)
        print str
        os.system(str)

