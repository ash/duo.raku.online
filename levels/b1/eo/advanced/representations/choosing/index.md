---
title: Elekti la ĝustan
---

{% include menu.html %}

Ĉe ĉiutagaj skalaroj, kiel nombroj kaj ĉenoj, ĉiuj tri reprezentoj aspektas same. La diferenco aperas ĉe kunmetitaj aŭ nedifinitaj valoroj. Jen `Pair`, montrata en tri manieroj:

```raku
say (foo => 1).gist; # foo => 1
say (foo => 1).Str;  # foo	1
say (foo => 1).raku; # :foo(1)
```

Jen proksimuma ĝenerala regulo:

* [`.gist`](../gist) — por eligo, kiun homoj *legos* (`say`, `note`).
* [`.Str`](../str) — por eligo en *simpla teksto* (`print`, `put`, variabloj ene de ĉenoj, la operatoro `~`).
* [`.raku`](../raku-method) — por *kodosimila* formo, kiam vi sencimigas (`dd`).

Kiam vi skribas klason, vi povas doni al ĉiu el ĉi tiuj metodoj vian propran difinon. Tiam ankaŭ viaj propraj objektoj presiĝas bele. Ni revenos al tio, kiam ni [kreos klasojn](/eo/oop/classes) en la sekva parto.

{% include nav.html %}
