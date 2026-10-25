---
title: Kiel instali Raku++ 🆕
translations_gpt:
---

{% include menu.html %}

Raku++ disponeblas en sia retejo, [raku.online](https://raku.online). Vi ankaŭ povas ricevi ĝin el ĝia deponejo en GitHub, [github.com/ash/rakupp](https://github.com/ash/rakupp). Kiam vi instalas ĝin, vi ricevas unu solan ruleblan dosieron nomatan `rakupp`. Nenion alian vi devas agordi, ĉar Raku++ ne havas apartan virtualan maŝinon.

## La instalilo

Sur macOS, Linukso kaj la BSD-sistemoj, unu komando faras ĉion. Ĝi elŝutas la binaraĵon por via maŝino kaj kontrolas ĝin. Poste ĝi metas `rakupp` en vian `PATH`. Vi ne bezonas administrantajn rajtojn por tio:

```console
$ curl -fsSL https://raku.online/install.sh | sh
```

Sur Vindozo, uzu anstataŭe fenestron de PowerShell. Vi ankaŭ povas uzi la instalan asistanton, `rakupp-setup-windows-x64.exe`. Ĝi troviĝas en la eldona paĝo de la deponejo. En PowerShell, rulu ĉi tion:

```console
> irm https://raku.online/install-windows.ps1 | iex
```

La instalilo demandas, ĉu vi volas havi Raku++ ankaŭ sub la nomo `raku`. Poste malfermu novan terminalon, por ke la nova `PATH` ekfunkciu. Pli malfrue, `rakupp upgrade` anstataŭigas ĝin per la plej nova eldono.

## Aliaj manieroj instali

* Sur macOS, per Homebrew: `brew tap ash/rakupp && brew install rakupp`.
* Per Docker, vi ne devas instali ion ajn: `docker run --rm -it ghcr.io/ash/rakupp` lanĉas la interagan ŝelon REPL.
* Pretaj arkivoj por ĉiu platformo troviĝas en la eldona paĝo de la deponejo.
* Raku++ estas skribita en C++. Do vi ankaŭ povas mem konstrui ĝin el la fontkodo. La deponejo klarigas, kiujn ilojn vi bezonas.

## Versiaj numeroj

La opcio `--version` montras, kiun version vi havas:

```console
$ rakupp --version
Raku++ 5.4.1 (2026-10-13) arm64-darwin
```

La linio montras la eldonon de Raku++ mem, `5.4.1`. Ĝi ankaŭ montras la daton de la konstruo kaj la platformon por la binaraĵo. La versio de la lingvo Raku estas aparta afero. Vi povas demandi la lingvon mem:

```console
$ rakupp -e 'say $*RAKU.version'
v6.d
```

Komparu tion kun la versia mesaĝo de Rakudo en la [paĝo pri instalado de Rakudo](/eo/essentials/how-to-install-rakudo). Tiam vi povas vidi, kiel la du kompililoj raportas pri si.

{% include nav.html %}
