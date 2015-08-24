#!/bin/bash

sudo sysctl -w kern.maxfiles=1024000
sudo sysctl -w kern.maxfilesperproc=1024000
ulimit -n 1024000
