---
title: Krei modulojn
---

{% include menu.html %}

Kiam programoj fariĝas pli grandaj, helpas dividi ilin en reuzeblajn pecojn. La _modulo_ estas unuo de kodo en sia propra dosiero. Aliaj programoj povas ŝargi kaj uzi ĝin.

Moduldosiero havas la finaĵon `.rakumod`. Ĝi komenciĝas per `unit module`, kiu donas al la modulo ĝian nomon. La subprogramoj interne estas defaŭlte privataj. Por kunhavi unu kun kodo, kiu uzas la modulon, marku ĝin per la trajto `is export`.

Jen modulo en dosiero nomata `Greeting.rakumod`:

```raku
unit module Greeting;

sub hello($name) is export {
    return "Hello, $name!";
}
```

La subprogramo `hello` havas `is export`, do ĉiu programo, kiu uzas la modulon, povas vidi ĝin. Sen `is export`, subprogramo restus privata en la modulo.

Modulo ankaŭ povas kunhavi datumojn per `our`-variabloj. Alia kodo povas atingi ilin per la nomo de la modulo. Por aldoni numeron de versio al `Greeting`, sufiĉas unu plia linio en la dosiero:

```raku
our $version = '1.0';
```

Kiam ĉi tiu linio estas en `Greeting.rakumod`, la valoro estas disponebla kiel `$Greeting::version`. Tio funkcias ĉie, kie la modulo estas ŝargita.

La sekvaj temoj montras [kiel programo ŝargas tian modulon](/eo/advanced/modules-basics/using-modules). Ili ankaŭ klarigas, kion precize la programo ricevas de ĝi.

{% include nav.html %}
