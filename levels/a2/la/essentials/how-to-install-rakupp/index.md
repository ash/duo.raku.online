---
title: Quomodo Raku++ installare 🆕
translations_gpt:
---

{% include menu.html %}

Raku++ ex situ eius interretiali accipere potes, [raku.online](https://raku.online). Etiam in GitHub est: [github.com/ash/rakupp](https://github.com/ash/rakupp). Cum id installas, unum fasciculum programmatis accipis: `rakupp`. Nihil aliud parare debes. Machinam virtualem separatam pro Raku++ non installas.

## Programma installationis

In macOS, Linux et systematibus BSD unum imperatum satis est. Versionem pro computatro tuo deprimit. Versionem examinat. Deinde `rakupp` in `PATH` tuum ponit. Iura administratoris non requirit:

```console
$ curl -fsSL https://raku.online/install.sh | sh
```

In Windows potius fenestram PowerShell adhibe. Alia via est programma installationis, `rakupp-setup-windows-x64.exe`. Id ex pagina emissionum repositorii deprimere potes. Hic est imperatum pro PowerShell:

```console
> irm https://raku.online/install-windows.ps1 | iex
```

Programma installationis rogat num etiam nomen `raku` pro Raku++ velis. Deinde terminalem novum aperi. Tum novum `PATH` operari incipit. Postea `rakupp upgrade` id ad emissionem novissimam renovat.

## Alii modi installandi

* In macOS, cum Homebrew: `brew tap ash/rakupp && brew install rakupp`.
* Cum Docker, nihil installare debes. `docker run --rm -it ghcr.io/ash/rakupp` corticem REPL interactivum incipit.
* Sunt archiva parata pro quoque systemate. In pagina emissionum repositorii sunt.
* Raku++ in C++ scriptum est. Itaque id etiam ipse ex codice fonte aedificare potes. Repositorium dicit quae instrumenta requiras.

## Numeri versionum

Quam versionem habes? Optione `--version` utere:

```console
$ rakupp --version
Raku++ 5.4.1 (2026-10-13) arm64-darwin
```

Linea tres res ostendit. Prima est emissio ipsius Raku++: `5.4.1`. Secunda est dies aedificationis. Tertia est systema pro hoc fasciculo programmatis. Versio linguae Raku alia res est. Ab ipsa lingua eam quaerere potes:

```console
$ rakupp -e 'say $*RAKU.version'
v6.d
```

Hoc cum nuntio versionis Rakudo confer. Est in [pagina installationis Rakudo](/la/essentials/how-to-install-rakudo). Videre potes quomodo duo compilatores versiones suas ostendant.

{% include nav.html %}
