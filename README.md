# Homebrew Tap for oli/wonders

Installing the tap will provide access to oli/wonders software via Homebrew:

```sh
brew tap oliwonders/tap
```

Installing individual tools can be done by:

[MetalHudHelper](https://github.com/oliwonders/metalhudhelper)
```sh
brew install --cask metalhudhelper
```

## Trusting this tap

Recent versions of Homebrew require a one-time opt-in before loading casks from
third-party taps. If you see:

```
Error: Refusing to load cask oliwonders/tap/metalhudhelper from untrusted tap oliwonders/tap.
```

trust the tap once and then install/upgrade as normal:

```sh
brew trust oliwonders/tap
```

To trust only a single cask instead of the whole tap:

```sh
brew trust --cask oliwonders/tap/metalhudhelper
```

This is stored locally per machine, so each user trusts the tap once.
