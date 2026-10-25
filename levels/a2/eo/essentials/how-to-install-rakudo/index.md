---
title: Kiel instali Rakudo
translations_gpt:
---

{% include menu.html %}

Vi bezonas kompililon por ruli Raku-programon. Vi devas unue instali ĝin. Ĉi tiu kurso uzas Rakudo. Ekzistas ankaŭ [Raku++](/eo/essentials/the-rakupp-compiler) kaj [mutsu](/eo/essentials/the-mutsu-interpreter). Vi instalas ilin aparte. Legu [Kiel instali Raku++](/eo/essentials/how-to-install-rakupp) kaj [Kiel instali mutsu](/eo/essentials/how-to-install-mutsu). Iru al [la retejo de Rakudo](https://rakudo.org). Tie vi povas elŝuti la ĝustan version por via mastruma sistemo.

## Fontoj

Elŝutu instalilon por via sistemo ĉe [rakudo.org/downloads](https://rakudo.org/downloads). Estas versioj por ĉiuj ĉefaj mastrumaj sistemoj: Windows, Mac OS kaj Linux. Estas ankaŭ la fontkodo. Vi povas mem kompili ĝin.

## Docker-bildoj

Vi ankaŭ povas ricevi Rakudo kiel docker-bildon. Per ĝi vi povas ruli programojn. Vi ankaŭ povas provi malgrandajn skriptojn en ŝelo REPL. Ĉiuj instrukcioj estas ĉe [github.com/Raku/docker](https://github.com/Raku/docker).

## Versinumeroj

Versinumero de Rakudo havas du partojn. Ili estas la jaro kaj la monato de la eldono. Do vi facile vidas, kiom nova estas via kompililo. Rulu ĉi tiun komandon por vidi ĝian versinumeron:

```console
$ raku -v
Welcome to 𝐑𝐚𝐤𝐮𝐝𝐨™ v2026.06.
Implementing the 𝐑𝐚𝐤𝐮™ programming language v6.d.
Built on MoarVM version 2026.06.
```

Ĉi tie vi vidas tri versinumerojn. La unua estas la versio de Rakudo mem: `v2026.06`. Poste venas la versio de la lingvo Raku: `v6.d`. Nuntempe ĉiu ĝisdatigo de la lingvo ricevas la sekvan literon. Ĉi tiu litero estas la malĉefa, aŭ malgranda, parto de la versio. Ekzemple, la sekva estas `v6.e`, kaj tiel plu. Fine vi vidas la nomon de la virtuala maŝino. Ĉi tiu kompililo uzas MoarVM version `2026.06`.

{% include nav.html %}
