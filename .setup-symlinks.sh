#!/bin/sh

echo "[SETUP] Symlink folders/files on ${HOME}"
find $(pwd) -maxdepth 1 ! -path $(pwd) -exec ln -sf {} $HOME \;
