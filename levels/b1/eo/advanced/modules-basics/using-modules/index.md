---
title: Uzi modulojn
---

{% include menu.html %}

Por uzi modulon, ŝargu ĝin per la deklaro `use`. Post tio, la nomoj, kiujn la modulo eksportas, estas disponeblaj. Vi povas uzi ilin, kvazaŭ vi mem skribus ilin.

Jen kiel programo uzas la dosieron `Greeting.rakumod` el la antaŭa temo:

```raku
use Greeting;

say hello('Anna');
```

`hello` estis markita per `is export`, do la deklaro `use` faras ĝin disponebla. La programo vokas ĝin rekte:

```
Hello, Anna!
```

Raku povas trovi la modulon nur, se ĝi estas sur la modula serĉvojo. Via moduldosiero eble estas en la sama dosierujo kiel via programo. En tiu kazo, diru al Raku serĉi tie per la opcio `-I.`. La punkto signifas "la aktuala dosierujo":

```console
$ raku -I. program.raku
Hello, Anna!
```

Raku trovas instalitajn modulojn aŭtomate. Ili estas priskribitaj poste, en [Instalado de moduloj el la reto](/eo/advanced/installing-modules). Do vi bezonas la opcion `-I` nur por moduloj apud via propra programo.

{% include nav.html %}
