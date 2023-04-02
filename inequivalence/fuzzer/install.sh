#!/bin/bash

# This installs the latest version of the afl-fuzzer locally
# Add $HOME/afl-2.52b/ to the PATH after installation
cd $HOME
wget https://lcamtuf.coredump.cx/afl/releases/afl-latest.tgz
tar -zxvf afl-latest.tgz
cd afl-2.52b/
make
sudo make install
