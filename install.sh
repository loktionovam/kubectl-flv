#!/bin/bash

if [ -d "$HOME/.krew/bin/" ]; then
    INSTALL_DIR="$HOME/.krew/bin/"
    cp -av kubectl-flv kubectl-flv-preview kubectl-flv-cm-view "$INSTALL_DIR"
else
    INSTALL_DIR=/usr/local/bin/
    sudo cp -av kubectl-flv kubectl-flv-preview kubectl-flv-cm-view "$INSTALL_DIR"
fi
