---
title: Raku++ installeren
translations_gpt:
---

{% include menu.html %}

Je kunt Raku++ krijgen via zijn website, [raku.online](https://raku.online). Het staat ook op GitHub: [github.com/ash/rakupp](https://github.com/ash/rakupp). Als je het installeert, krijg je één programmabestand: `rakupp`. Je hoeft verder niets in te stellen. Raku++ heeft geen aparte virtuele machine om te installeren.

## Het installatieprogramma

Op macOS, Linux en de BSD's heb je maar één opdracht nodig. Hij downloadt de build voor jouw computer. Hij controleert de build. Daarna zet hij `rakupp` in je `PATH`. Hij heeft geen beheerdersrechten nodig:

```console
$ curl -fsSL https://raku.online/install.sh | sh
```

Gebruik op Windows in plaats daarvan een PowerShell-venster. Een andere manier is het installatieprogramma, `rakupp-setup-windows-x64.exe`. Je kunt het downloaden van de releasespagina van de repository. Dit is de opdracht voor PowerShell:

```console
> irm https://raku.online/install-windows.ps1 | iex
```

Het installatieprogramma vraagt of je voor Raku++ ook de naam `raku` wilt. Open daarna een nieuwe terminal. Dan gaat het nieuwe `PATH` werken. Later werkt `rakupp upgrade` het bij tot de nieuwste uitgave.

## Andere manieren om te installeren

* Op macOS, met Homebrew: `brew tap ash/rakupp && brew install rakupp`.
* Met Docker hoef je niets te installeren. `docker run --rm -it ghcr.io/ash/rakupp` start de interactieve REPL.
* Er zijn kant-en-klare archieven voor elk platform. Ze staan op de releasespagina van de repository.
* Raku++ is in C++ geschreven. Je kunt het dus ook zelf bouwen vanaf de broncode. De repository zegt welke hulpmiddelen je nodig hebt.

## Versienummers

Welke versie heb je? Gebruik de optie `--version`:

```console
$ rakupp --version
Raku++ 5.4.1 (2026-10-13) arm64-darwin
```

De regel toont drie dingen. Het eerste is de uitgave van Raku++ zelf: `5.4.1`. Het tweede is de datum van de build. Het derde is het platform voor dit programmabestand. De versie van de taal Raku is iets anders. Die kun je aan de taal zelf vragen:

```console
$ rakupp -e 'say $*RAKU.version'
v6.d
```

Vergelijk dit met de versieregel van Rakudo. Die staat op de [installatiepagina van Rakudo](/nl/essentials/how-to-install-rakudo). Je ziet hoe de twee compilers hun versies laten zien.

{% include nav.html %}
