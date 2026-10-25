---
title: mutsu installeren
translations_gpt:
---

{% include menu.html %}

mutsu heeft kant-en-klare builds voor macOS en Linux. Ze werken op Intel/AMD- en op ARM-processors. Het project staat op GitHub: [github.com/tokuhirom/mutsu](https://github.com/tokuhirom/mutsu). Je vindt de builds op de releasespagina van het project. Elke build heeft twee programmabestanden: `mutsu` zelf en `mzef`. `mzef` is de pakketbeheerder. Hij installeert Raku-modules.

## Met mise

De makkelijkste manier om een uitgave te installeren is [mise](https://mise.jdx.dev/). Dit hulpmiddel installeert tools voor ontwikkelaars en werkt ze bij. Je hebt maar één opdracht nodig. Hij downloadt de build voor jouw computer. Hij zet ook `mutsu` en `mzef` in je `PATH`:

```console
$ mise use -g github:tokuhirom/mutsu
```

## Met Docker

Met Docker kun je mutsu gebruiken zonder hem te installeren. Dat werkt op elk systeem met Docker, ook op Windows. Deze opdracht start de interactieve REPL:

```console
$ docker run --rm -it ghcr.io/tokuhirom/mutsu
```

En deze opdracht voert een programma uit de huidige map uit:

```console
$ docker run --rm -v "$PWD:/work:ro" ghcr.io/tokuhirom/mutsu mutsu hello.raku
```

## Bouwen vanaf de broncode

mutsu is in Rust geschreven. Je kunt hem dus ook zelf bouwen met Cargo. Gebruik de broncode uit zijn repository. De repository legt de details uit.

## Versienummers

Welke versie heb je? Gebruik de optie `--version`:

```console
$ mutsu --version
mutsu 0.24.0
```

Dit is de uitgave van mutsu zelf. De versie van de taal Raku is iets anders. Die vraag je aan de taal, net als bij de andere compilers:

```console
$ mutsu -e 'say $*RAKU.version'
v6.d
```

Vergelijk dit met [Rakudo](/nl/essentials/how-to-install-rakudo) en [Raku++](/nl/essentials/how-to-install-rakupp). Kijk hoe zij hun versies laten zien.

{% include nav.html %}
