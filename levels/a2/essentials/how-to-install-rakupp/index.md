---
title: How to install Raku++
---

{% include menu.html %}

You can get Raku++ from its website, [raku.online](https://raku.online). It is also on GitHub: [github.com/ash/rakupp](https://github.com/ash/rakupp). When you install it, you get one program file: `rakupp`. You do not need to set up anything else. Raku++ has no separate virtual machine to install.

## The installer

On macOS, Linux and the BSDs, you need only one command. It downloads the build for your computer. It checks the build. Then it puts `rakupp` on your `PATH`. It does not need administrator rights:

```console
$ curl -fsSL https://raku.online/install.sh | sh
```

On Windows, use a PowerShell window instead. Another way is the setup program, `rakupp-setup-windows-x64.exe`. You can download it from the releases page of the repository. Here is the command for PowerShell:

```console
> irm https://raku.online/install-windows.ps1 | iex
```

The installer asks if you also want the name `raku` for Raku++. After that, open a new terminal. Then the new `PATH` starts to work. Later, `rakupp upgrade` updates it to the newest release.

## Other ways to install

* On macOS, with Homebrew: `brew tap ash/rakupp && brew install rakupp`.
* With Docker, you do not need to install anything. `docker run --rm -it ghcr.io/ash/rakupp` starts the interactive REPL.
* There are ready-made archives for each platform. They are on the releases page of the repository.
* Raku++ is written in C++. So you can also build it yourself from the source code. The repository says which tools you need.

## Version numbers

Which version do you have? Use the `--version` option:

```console
$ rakupp --version
Raku++ 5.4.1 (2026-10-13) arm64-darwin
```

The line shows three things. The first is the release of Raku++ itself: `5.4.1`. The second is the date of the build. The third is the platform for this program file. The version of the Raku language is a different thing. You can ask the language itself:

```console
$ rakupp -e 'say $*RAKU.version'
v6.d
```

Compare this with the version message of Rakudo. It is on the [Rakudo installation page](/essentials/how-to-install-rakudo). You can see how the two compilers show their versions.

{% include nav.html %}
