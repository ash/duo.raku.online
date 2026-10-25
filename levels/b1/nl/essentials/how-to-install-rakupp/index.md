---
title: Raku++ installeren
translations_gpt:
---

{% include menu.html %}

Raku++ is beschikbaar op zijn website, [raku.online](https://raku.online). Je kunt het ook krijgen via zijn GitHub-repository, [github.com/ash/rakupp](https://github.com/ash/rakupp). Als je het installeert, krijg je één uitvoerbaar bestand met de naam `rakupp`. Verder hoef je niets in te stellen, want Raku++ heeft geen aparte virtuele machine.

## Het installatieprogramma

Op macOS, Linux en de BSD's doet één opdracht alles. Hij downloadt de build voor jouw machine en controleert die. Daarna zet hij `rakupp` in je `PATH`. Je hebt daar geen beheerdersrechten voor nodig:

```console
$ curl -fsSL https://raku.online/install.sh | sh
```

Gebruik op Windows in plaats daarvan een PowerShell-venster. Je kunt ook de installatiewizard gebruiken, `rakupp-setup-windows-x64.exe`. Die staat op de releasespagina van de repository. Voer in PowerShell dit uit:

```console
> irm https://raku.online/install-windows.ps1 | iex
```

Het installatieprogramma vraagt of je Raku++ ook onder de naam `raku` wilt hebben. Open daarna een nieuwe terminal, zodat het nieuwe `PATH` gaat werken. Later vervangt `rakupp upgrade` het door de nieuwste uitgave.

## Andere manieren om te installeren

* Op macOS, met Homebrew: `brew tap ash/rakupp && brew install rakupp`.
* Met Docker hoef je niets te installeren: `docker run --rm -it ghcr.io/ash/rakupp` start de interactieve REPL.
* Kant-en-klare archieven voor elk platform staan op de releasespagina van de repository.
* Raku++ is in C++ geschreven. Je kunt het dus ook zelf bouwen vanaf de broncode. De repository legt uit welke hulpmiddelen je nodig hebt.

## Versienummers

De optie `--version` laat zien welke versie je hebt:

```console
$ rakupp --version
Raku++ 5.4.1 (2026-10-13) arm64-darwin
```

De regel toont de uitgave van Raku++ zelf, `5.4.1`. Hij toont ook de datum van de build en het platform van het binaire bestand. De versie van de taal Raku is iets anders. Die kun je aan de taal zelf vragen:

```console
$ rakupp -e 'say $*RAKU.version'
v6.d
```

Vergelijk dit met de versieregel van Rakudo op de [installatiepagina van Rakudo](/nl/essentials/how-to-install-rakudo). Dan zie je hoe de twee compilers zichzelf melden.

{% include nav.html %}
