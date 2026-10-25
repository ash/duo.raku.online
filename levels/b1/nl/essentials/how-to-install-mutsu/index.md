---
title: mutsu installeren
translations_gpt:
---

{% include menu.html %}

mutsu biedt kant-en-klare builds voor macOS en Linux. Er zijn builds voor zowel Intel/AMD- als ARM-processors. Ze staan op de releasespagina van zijn GitHub-repository, [github.com/tokuhirom/mutsu](https://github.com/tokuhirom/mutsu). Elke build bevat twee uitvoerbare bestanden: `mutsu` zelf en `mzef`, zijn pakketbeheerder.

## Met mise

De eenvoudigste manier om een uitgave te installeren is [mise](https://mise.jdx.dev/). Dat is een hulpmiddel dat ontwikkelaarstools installeert en bijwerkt. Eén opdracht downloadt de build voor jouw machine. Ook zet die zowel `mutsu` als `mzef` in je `PATH`:

```console
$ mise use -g github:tokuhirom/mutsu
```

## Met Docker

Als je systeem Docker draait, kun je mutsu gebruiken zonder hem te installeren. Dat werkt ook op Windows. Deze opdracht start de interactieve REPL:

```console
$ docker run --rm -it ghcr.io/tokuhirom/mutsu
```

En dit voert een programma uit de huidige map uit:

```console
$ docker run --rm -v "$PWD:/work:ro" ghcr.io/tokuhirom/mutsu mutsu hello.raku
```

## Bouwen vanaf de broncode

mutsu is in Rust geschreven. Je kunt hem dus ook zelf bouwen met Cargo. De broncode staat in zijn repository, die ook de details uitlegt.

## Versienummers

De optie `--version` laat zien welke versie je hebt:

```console
$ mutsu --version
mutsu 0.24.0
```

Dit is de uitgave van mutsu zelf. Net als bij de andere compilers kan de taal je zelf haar versie vertellen:

```console
$ mutsu -e 'say $*RAKU.version'
v6.d
```

Vergelijk dit met hoe [Rakudo](/nl/essentials/how-to-install-rakudo) en [Raku++](/nl/essentials/how-to-install-rakupp) zichzelf melden.

{% include nav.html %}
