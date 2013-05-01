#!/usr/bin/env python
# setup the dotfiles

import sys
import os

excluded_files = ["Rakefile", "README.rdoc", "LICENSE", "fish", "setup.py", ".git", ".gitignore"]
destdir = os.getenv('HOME')

if len(sys.argv) == 2:
    destdir = sys.argv[1]

entries = [file for file in os.listdir(".") if file not in excluded_files]

for dentry in entries:
    linkpath = os.path.join(destdir, "." + dentry) 
    if not os.path.exists(linkpath):
        str ="ln -s %s %s" % (os.path.realpath(dentry), linkpath) 
        print str
        os.system(str)

