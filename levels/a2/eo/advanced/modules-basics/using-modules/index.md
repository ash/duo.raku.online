---
title: Uzi modulojn
---

{% include menu.html %}

Por uzi modulon, ŝargu ĝin per la deklaro `use`. Post tio, vi povas uzi la nomojn, kiujn la modulo eksportas. Estas kvazaŭ vi mem skribis ilin.

Prenu la dosieron `Greeting.rakumod` el la antaŭa temo. Programo uzas ĝin jene:

```raku
use Greeting;

say hello('Anna');
```

`hello` havas la markon `is export`. Do la deklaro `use` faras ĝin disponebla. La programo vokas ĝin rekte:

```
Hello, Anna!
```

Raku devas trovi la modulon. Do la modulo devas esti sur la modula serĉvojo. Tio estas la listo de lokoj, kie Raku serĉas modulojn. Eble la moduldosiero estas en la sama dosierujo kiel via programo. Tiam diru al Raku serĉi tie per la opcio `-I.`. La punkto signifas "la aktuala dosierujo":

```console
$ raku -I. program.raku
Hello, Anna!
```

Raku trovas instalitajn modulojn aŭtomate. Vi lernas pri ili poste, en [Instalado de moduloj el la reto](/eo/advanced/installing-modules). Do vi bezonas `-I` nur por moduloj apud via programo.

{% include nav.html %}
