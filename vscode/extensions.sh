#!/bin/sh

cat vscode/extensions | xargs -I _ code --install-extension _
