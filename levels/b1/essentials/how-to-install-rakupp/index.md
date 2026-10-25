---
title: How to install Raku++
---

{% include menu.html %}

Raku++ is available on its website, [raku.online](https://raku.online). You can also get it from its GitHub repository, [github.com/ash/rakupp](https://github.com/ash/rakupp). When you install it, you get a single executable file called `rakupp`. Nothing else needs to be set up, as Raku++ has no separate virtual machine.

## The installer

On macOS, Linux and the BSDs, one command does everything. It downloads the build for your machine and checks it. Then it puts `rakupp` on your `PATH`. You do not need administrator rights for it:

```console
$ curl -fsSL https://raku.online/install.sh | sh
```

On Windows, use a PowerShell window instead. You can also use the setup wizard, `rakupp-setup-windows-x64.exe`. It is on the releases page of the repository. In PowerShell, run this:

```console
> irm https://raku.online/install-windows.ps1 | iex
```

The installer asks whether you also want Raku++ under the name `raku`. Afterwards, open a new terminal so that the new `PATH` starts working. Later, `rakupp upgrade` replaces it with the newest release.

## Other ways to install

* On macOS, with Homebrew: `brew tap ash/rakupp && brew install rakupp`.
* With Docker, you do not have to install anything: `docker run --rm -it ghcr.io/ash/rakupp` starts the interactive REPL.
* Ready-made archives for each platform are on the releases page of the repository.
* Raku++ is written in C++. So you can also build it yourself from the source code. The repository explains which tools you need.

## Version numbers

The `--version` option shows which version you have:

```console
$ rakupp --version
Raku++ 5.4.1 (2026-10-13) arm64-darwin
```

The line shows the release of Raku++ itself, `5.4.1`. It also shows the build date and the platform for the binary. The version of the Raku language is a separate thing. You can ask the language itself:

```console
$ rakupp -e 'say $*RAKU.version'
v6.d
```

Compare this with the Rakudo version message on the [Rakudo installation page](/essentials/how-to-install-rakudo). Then you can see how the two compilers report themselves.

{% include nav.html %}
