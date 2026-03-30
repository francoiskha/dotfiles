# francoiskha's Dotfiles

Personalized shell environment, forked from [Zach Holman's dotfiles](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/).

## Intent & Architecture

This setup focuses on **performance** and **maintainability** while leveraging the best parts of the Oh-My-Zsh ecosystem.

### Key Performance Optimizations
- **Antidote for Plugins**: Replaced the full Oh-My-Zsh framework with [Antidote](https://getantidote.github.io/). This allows loading only necessary OMZ plugins (like `git`, `docker`, etc.) without the overhead of the entire framework. Plugins are statically compiled for near-instant startup.
- **Mise for Tooling**: Replaced `nvm` with [Mise](https://mise.jdx.dev/). Mise is written in Rust and handles tool versions (Node, Python, Go) without slowing down every shell session.
- **Homebrew Prefix Caching**: The Homebrew installation path is cached in `$BREW_PREFIX` once during startup, avoiding expensive subshell calls like `$(brew --prefix)` throughout the configuration.
- **Optimized Loading Order**: Shell initialization is carefully sequenced: Environment -> PATH -> `compinit` -> Plugins -> Aliases. Initializing `compinit` *before* plugins ensures that `compdef` is always available when plugins need it.

### Core Components
- **Prompt**: Uses [Pure](https://github.com/sindresorhus/pure) for a minimal, fast, and informative prompt.
- **Package Management**: Three `Brewfile`s at the root track Homebrew formulas and casks:
  - `Brewfile` — baseline packages installed on every Mac
  - `Brewfile.personal` — packages for the personal Mac only
  - `Brewfile.work` — packages for the work Mac only

  The context is detected automatically: if `$USER == "fran"`, the personal profile is applied; otherwise the work profile is used.
- **Automatic Caching**: Dynamic completions (for tools like `fzf` or `docker`) are cached locally to minimize startup lag.

## Installation

```sh
git clone https://github.com/francoiskha/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

The `bootstrap` script will link your configuration files and sync all dependencies via `brew bundle`.

## Maintenance & Customization

### Adding Plugins
Add any Zsh plugin (from GitHub or Oh-My-Zsh) to `zsh/plugins.txt` and restart your shell.

### Adding Packages
Add new Homebrew packages or Mac apps to the appropriate `Brewfile`:
- `Brewfile` for packages needed on every Mac
- `Brewfile.personal` for packages specific to the personal Mac
- `Brewfile.work` for packages specific to the work Mac

You can then sync your system by running:
```sh
dotfilesdot
```
(This is an alias for `bin/dotfilesdot` which updates Brew and runs `brew bundle`).

### Secrets
Put your sensitive environment variables (API keys, private tokens) in `~/.localrc`. This file is sourced by Zsh but is not tracked by Git.

### Troubleshooting
If you see errors related to `completions`, ensure `$ZSH_CACHE_DIR` (defined in `zshrc.symlink`) is writable. The system automatically creates this in your home cache directory.

## Credits

Based on [Holman's dotfiles](https://github.com/holman/dotfiles).
Theme: [Pure](https://github.com/sindresorhus/pure).
Plugin Manager: [Antidote](https://getantidote.github.io/).
Version Manager: [Mise](https://mise.jdx.dev/).
