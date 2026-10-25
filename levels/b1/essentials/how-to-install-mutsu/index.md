---
title: How to install mutsu
---

{% include menu.html %}

mutsu offers ready-made builds for macOS and Linux. There are builds for both Intel/AMD and ARM processors. They are on the releases page of its GitHub repository, [github.com/tokuhirom/mutsu](https://github.com/tokuhirom/mutsu). Each build contains two executable files: `mutsu` itself and `mzef`, its package manager.

## With mise

The simplest way to install a release is [mise](https://mise.jdx.dev/). It is a tool that installs and updates developer tools. One command downloads the build for your machine. It also puts both `mutsu` and `mzef` on your `PATH`:

```console
$ mise use -g github:tokuhirom/mutsu
```

## With Docker

If your system runs Docker, you can use mutsu without installing it. This works on Windows too. This command starts the interactive REPL:

```console
$ docker run --rm -it ghcr.io/tokuhirom/mutsu
```

And this runs a program from the current directory:

```console
$ docker run --rm -v "$PWD:/work:ro" ghcr.io/tokuhirom/mutsu mutsu hello.raku
```

## Building from source

mutsu is written in Rust. So you can also build it yourself with Cargo. The source code is in its repository, which also explains the details.

## Version numbers

The `--version` option shows which version you have:

```console
$ mutsu --version
mutsu 0.24.0
```

This is the release of mutsu itself. As with the other compilers, the language can tell you its version:

```console
$ mutsu -e 'say $*RAKU.version'
v6.d
```

Compare this with how [Rakudo](/essentials/how-to-install-rakudo) and [Raku++](/essentials/how-to-install-rakupp) report themselves.

{% include nav.html %}
