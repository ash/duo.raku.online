---
title: How to install mutsu
---

{% include menu.html %}

mutsu has ready-made builds for macOS and Linux. They work on Intel/AMD and on ARM processors. The project is on GitHub: [github.com/tokuhirom/mutsu](https://github.com/tokuhirom/mutsu). You can find the builds on its releases page. Each build has two program files: `mutsu` itself and `mzef`. `mzef` is its package manager. It installs Raku modules.

## With mise

The easiest way to install a release is [mise](https://mise.jdx.dev/). This tool installs and updates tools for developers. You need only one command. It downloads the build for your computer. It also puts `mutsu` and `mzef` on your `PATH`:

```console
$ mise use -g github:tokuhirom/mutsu
```

## With Docker

With Docker, you can use mutsu without installing it. This works on any system with Docker, also on Windows. This command starts the interactive REPL:

```console
$ docker run --rm -it ghcr.io/tokuhirom/mutsu
```

And this command runs a program from the current directory:

```console
$ docker run --rm -v "$PWD:/work:ro" ghcr.io/tokuhirom/mutsu mutsu hello.raku
```

## Building from source

mutsu is written in Rust. So you can also build it yourself with Cargo. Use the source code from its repository. The repository explains the details.

## Version numbers

Which version do you have? Use the `--version` option:

```console
$ mutsu --version
mutsu 0.24.0
```

This is the release of mutsu itself. The version of the Raku language is a different thing. You ask the language for it, like with the other compilers:

```console
$ mutsu -e 'say $*RAKU.version'
v6.d
```

Compare this with [Rakudo](/essentials/how-to-install-rakudo) and [Raku++](/essentials/how-to-install-rakupp). See how they show their versions.

{% include nav.html %}
