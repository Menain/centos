#!/usr/bin/expect
set timeout 300
set passwd ewq321`
set ip [lindex $argv 0]
spawn ssh-copy-id root@$ip
expect {
    "(yes/no)?" {send "yes\r";exp_continue}
    "password" {send "$passwd\r"}
}
log_file autossh.log
expect eof
exit
