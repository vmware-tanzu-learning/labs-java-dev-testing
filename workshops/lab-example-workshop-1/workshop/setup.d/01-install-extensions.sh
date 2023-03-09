#!/bin/bash

set -x
set -eo pipefail

# This can take up to 2 minutes, or even worse, to install directly since open-vsx.org
# is so slow. The set of packages which it installs should be:
#
# redhat.java-1.15.0-linux-x64
# vscjava.vscode-java-debug-0.49.0-universal
# vscjava.vscode-java-dependency-0.21.1-universal
# vscjava.vscode-java-pack-0.25.8-universal
# vscjava.vscode-java-test-0.38.1-universal
# vscjava.vscode-maven-0.40.4-universal

if [ ! -d $HOME/.local/share/code-server/extensions/vscjava.vscode-java-pack-0.25.8-universal ]; then
    time code-server --install-extension vscjava.vscode-java-pack@0.25.8 \
      --disable-telemetry --disable-update-check --disable-file-downloads --force
fi
