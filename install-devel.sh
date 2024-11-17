#!/bin/bash
sh install-paru.sh

paru docker ducker go rustup vscodium-bin vscodium-bin-marketplace vscodium-bin-features nodejs yarn

rustup default

curl -fsSL https://ollama.com/install.sh | sh