This repository hosts my Neovim and tmux configuration.

**Prerequisites**

Core formatter/tooling installs used by telescope/conform:

```
brew install ripgrep        # fast project search powering telescope
brew install fd             # FD-based file finding helpers
go install golang.org/x/tools/cmd/goimports@latest  # Go formatter
npm install -g prettier     # Prettier for JS/TS
brew install stylua         # Stylua for Lua
```

Optional helper for JVM sources:

```
brew install google-java-format  # Java formatter wired into conform
```

Java tooling:

```
wget https://projectlombok.org/downloads/lombok.jar
mv lombok.jar ~/.local/share/java/lombok.jar
```

**Quick install**

After meeting the prerequisites, run `make install` from the repo root to deploy this config into `~/.config/nvim` and copy `.tmux.conf` into `~/.config/.tmux.conf` as well.
