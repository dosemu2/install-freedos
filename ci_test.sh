#!/bin/sh

set -e

sudo apt update
sudo apt install python3-tqdm


./src/dosemu-downloaddos --test
