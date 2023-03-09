#!/bin/bash

set -x
set -eo pipefail

if [ ! -d $HOME/.local/share/code-server/extensions/vscjava.vscode-java-pack-0.25.8-universal ]; then
    time code-server --install-extension vscjava.vscode-java-pack@0.25.8 \
      --disable-telemetry --disable-update-check --disable-file-downloads --force
fi
