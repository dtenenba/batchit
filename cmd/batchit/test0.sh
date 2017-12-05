#!/bin/bash

set -xeuo pipefail

echo hello from batchit

df -h

echo "that is so awesome" > /mnt/my-ebs/some-file.txt


fallocate -l 300G /mnt/my-ebs/a-large-file

df -h

ls -lh /mnt/my-ebs




# example cmdline:
#  batchit submit --registry hub.docker.com --image ubuntu:16.04 --role fh-pi-gottardo-r-batchtask --region us-west-2 --queue mixed --cpus 1 --mem 500 --jobname dtenenba-batchit-test-0 ./test.sh
