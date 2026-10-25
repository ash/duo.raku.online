---
title: Kiel instali Raku++ 🆕
translations_gpt:
---

{% include menu.html %}

Vi povas ricevi Raku++ de ĝia retejo, [raku.online](https://raku.online). Ĝi estas ankaŭ en GitHub: [github.com/ash/rakupp](https://github.com/ash/rakupp). Kiam vi instalas ĝin, vi ricevas unu programdosieron: `rakupp`. Vi ne bezonas agordi ion alian. Raku++ ne havas apartan virtualan maŝinon por instali.

## La instalilo

Sur macOS, Linukso kaj la BSD-sistemoj, vi bezonas nur unu komandon. Ĝi elŝutas la binaraĵon por via komputilo. Ĝi kontrolas la binaraĵon. Poste ĝi metas `rakupp` en vian `PATH`. Ĝi ne bezonas administrantajn rajtojn:

```console
$ curl -fsSL https://raku.online/install.sh | sh
```

Sur Vindozo, uzu anstataŭe fenestron de PowerShell. Alia maniero estas la instala programo, `rakupp-setup-windows-x64.exe`. Vi povas elŝuti ĝin el la eldona paĝo de la deponejo. Jen la komando por PowerShell:

```console
> irm https://raku.online/install-windows.ps1 | iex
```

La instalilo demandas, ĉu vi volas ankaŭ la nomon `raku` por Raku++. Post tio, malfermu novan terminalon. Tiam la nova `PATH` ekfunkcias. Pli malfrue, `rakupp upgrade` ĝisdatigas ĝin al la plej nova eldono.

## Aliaj manieroj instali

* Sur macOS, per Homebrew: `brew tap ash/rakupp && brew install rakupp`.
* Per Docker, vi ne bezonas instali ion ajn. `docker run --rm -it ghcr.io/ash/rakupp` lanĉas la interagan ŝelon REPL.
* Estas pretaj arkivoj por ĉiu platformo. Ili estas en la eldona paĝo de la deponejo.
* Raku++ estas skribita en C++. Do vi ankaŭ povas mem konstrui ĝin el la fontkodo. La deponejo diras, kiujn ilojn vi bezonas.

## Versiaj numeroj

Kiun version vi havas? Uzu la opcion `--version`:

```console
$ rakupp --version
Raku++ 5.4.1 (2026-10-13) arm64-darwin
```

La linio montras tri aferojn. La unua estas la eldono de Raku++ mem: `5.4.1`. La dua estas la dato de la konstruo. La tria estas la platformo por ĉi tiu programdosiero. La versio de la lingvo Raku estas alia afero. Vi povas demandi la lingvon mem:

```console
$ rakupp -e 'say $*RAKU.version'
v6.d
```

Komparu tion kun la versia mesaĝo de Rakudo. Ĝi estas en la [paĝo pri instalado de Rakudo](/eo/essentials/how-to-install-rakudo). Vi povas vidi, kiel la du kompililoj montras siajn versiojn.

{% include nav.html %}
