---
title: Krei modulojn
---

{% include menu.html %}

Programoj fariĝas pli grandaj kun la tempo. Tiam estas bone dividi ilin en pecojn. Vi povas uzi tiujn pecojn denove. La _modulo_ estas unu tia peco de kodo. Ĝi estas en sia propra dosiero. Aliaj programoj povas ŝargi ĝin kaj uzi ĝin.

Moduldosiero havas la finaĵon `.rakumod`. Ĝi komenciĝas per `unit module` kaj la nomo de la modulo. Normale, la subprogramoj en modulo estas privataj. Nur la modulo mem povas uzi ilin. Ĉu vi volas kunhavi subprogramon kun alia kodo? Marku ĝin per la trajto `is export`.

Jen modulo en la dosiero `Greeting.rakumod`:

```raku
unit module Greeting;

sub hello($name) is export {
    return "Hello, $name!";
}
```

La subprogramo `hello` havas `is export`. Do ĉiu programo, kiu uzas la modulon, povas vidi ĝin. Subprogramo sen `is export` restas privata. Nur la modulo mem povas uzi ĝin.

Modulo ankaŭ povas kunhavi datumojn. Por tio, ĝi uzas `our`-variablojn. Alia kodo povas atingi ilin per la nomo de la modulo. Ni aldonu numeron de versio al `Greeting`. Ni bezonas nur unu plian linion en la dosiero:

```raku
our $version = '1.0';
```

Nun `Greeting.rakumod` havas ĉi tiun linion. Do la valoro estas disponebla kiel `$Greeting::version`. Tio funkcias ĉie, kie oni ŝargas la modulon.

La sekvaj temoj montras [kiel programo ŝargas tian modulon](/eo/advanced/modules-basics/using-modules). Ili ankaŭ montras, kion la programo ricevas de ĝi.

{% include nav.html %}
