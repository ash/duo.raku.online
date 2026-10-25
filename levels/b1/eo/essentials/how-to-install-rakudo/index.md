---
title: Kiel instali Rakudo
translations_gpt:
---

{% include menu.html %}

Por ruli programon en Raku, vi devas instali kompililon. Ĉi tiu kurso uzas Rakudo. La aliaj du, [Raku++](/eo/essentials/the-rakupp-compiler) kaj [mutsu](/eo/essentials/the-mutsu-interpreter), estas instalataj aparte. Vidu [Kiel instali Raku++](/eo/essentials/how-to-install-rakupp) kaj [Kiel instali mutsu](/eo/essentials/how-to-install-mutsu). Vizitu [la retejon de Rakudo](https://rakudo.org) kaj elŝutu la version por via mastruma sistemo.

## Fontoj

Vi povas elŝuti instalilon por via sistemo ĉe [rakudo.org/downloads](https://rakudo.org/downloads). Estas versioj por ĉiuj ĉefaj mastrumaj sistemoj: Windows, Mac OS kaj Linux. Vi ankaŭ povas ricevi la fontkodon kaj mem kompili ĝin.

## Docker-bildoj

Rakudo disponeblas ankaŭ kiel docker-bildo. Vi povas uzi ĝin por ruli programojn. Ĝi ankaŭ taŭgas por provi malgrandajn skriptojn en ŝelo REPL. Ĉiujn instrukciojn vi trovos ĉe [github.com/Raku/docker](https://github.com/Raku/docker).

## Versinumeroj

Versinumero de Rakudo havas du partojn: la jaron kaj la monaton de la eldono. Do vi povas facile vidi, kiom nova estas via kompililo. Rulu ĉi tiun komandon por vidi ĝian versinumeron:

```console
$ raku -v
Welcome to 𝐑𝐚𝐤𝐮𝐝𝐨™ v2026.06.
Implementing the 𝐑𝐚𝐤𝐮™ programming language v6.d.
Built on MoarVM version 2026.06.
```

Ĉi tie vi povas vidi tri versinumerojn. La unua estas la versio de Rakudo mem: `v2026.06`. Poste venas la versio de la lingvo Raku: `v6.d`. Nuntempe la ĝisdatigoj ricevas la sekvan literon kiel malĉefan version. Ekzemple, la sekva estas `v6.e`, kaj tiel plu. Fine vi vidas la nomon de la virtuala maŝino en ĉi tiu kompililo: MoarVM versio `2026.06`.

{% include nav.html %}
