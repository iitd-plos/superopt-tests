#!/usr/bin/expect
set install_script_path [lindex $argv 0];
set install_dir [lindex $argv 1];

set timeout -1

spawn $install_script_path
expect "Enter the directory you wish to install to (e.g. /usr/cpu2017)\r"
send -- "$install_dir\r"
expect "Is this correct?"
send -- "yes\r"
expect eof
