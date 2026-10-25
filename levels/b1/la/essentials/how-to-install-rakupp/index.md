---
title: Quomodo Raku++ installare 🆕
translations_gpt:
---

{% include menu.html %}

Raku++ in situ suo interretiali praesto est, [raku.online](https://raku.online). Id etiam ex repositorio eius GitHub accipere potes, [github.com/ash/rakupp](https://github.com/ash/rakupp). Cum id installas, unum programma exsecutabile accipis, nomine `rakupp`. Nihil aliud parandum est, quia Raku++ nullam machinam virtualem separatam habet.

## Programma installationis

In macOS, Linux et systematibus BSD unum imperatum omnia facit. Versionem machinae tuae aptam deprimit et examinat. Deinde `rakupp` in `PATH` tuum ponit. Iura administratoris ad hoc non requiris:

```console
$ curl -fsSL https://raku.online/install.sh | sh
```

In Windows potius fenestram PowerShell adhibe. Etiam ducem installationis adhibere potes, `rakupp-setup-windows-x64.exe`. Est in pagina emissionum repositorii. In PowerShell hoc exsequere:

```console
> irm https://raku.online/install-windows.ps1 | iex
```

Programma installationis rogat num Raku++ etiam sub nomine `raku` habere velis. Deinde terminalem novum aperi, ut novum `PATH` operari incipiat. Postea `rakupp upgrade` emissionem novissimam in eius locum ponit.

## Alii modi installandi

* In macOS, cum Homebrew: `brew tap ash/rakupp && brew install rakupp`.
* Cum Docker nihil installare debes: `docker run --rm -it ghcr.io/ash/rakupp` corticem REPL interactivum incipit.
* Archiva parata pro quoque systemate in pagina emissionum repositorii sunt.
* Raku++ in C++ scriptum est. Itaque id etiam ipse ex codice fonte aedificare potes. Repositorium explicat quae instrumenta requiras.

## Numeri versionum

Optio `--version` ostendit quam versionem habeas:

```console
$ rakupp --version
Raku++ 5.4.1 (2026-10-13) arm64-darwin
```

Linea emissionem ipsius Raku++ ostendit, `5.4.1`. Etiam diem aedificationis et systema binarii ostendit. Versio linguae Raku res separata est. Ab ipsa lingua eam quaerere potes:

```console
$ rakupp -e 'say $*RAKU.version'
v6.d
```

Hoc cum nuntio versionis Rakudo in [pagina installationis Rakudo](/la/essentials/how-to-install-rakudo) confer. Tum videre potes quomodo duo compilatores se ipsos nuntient.

{% include nav.html %}
