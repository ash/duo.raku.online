---
title: Elekti la ĝustan
---

{% include menu.html %}

Prenu simplajn skalarojn, kiel nombrojn kaj ĉenojn. Ĉe ili, ĉiuj tri formoj aspektas same. Ili estas malsamaj por valoroj kun pluraj partoj. Ili estas ankaŭ malsamaj por nedifinitaj valoroj. Jen `Pair`, montrata en tri manieroj:

```raku
say (foo => 1).gist; # foo => 1
say (foo => 1).Str;  # foo	1
say (foo => 1).raku; # :foo(1)
```

Jen simpla regulo:

* [`.gist`](../gist) — por eligo, kiun homoj *legas* (`say`, `note`).
* [`.Str`](../str) — por eligo, kiu estas *simpla teksto* (`print`, `put`, valoroj ene de ĉenoj, la operatoro `~`).
* [`.raku`](../raku-method) — por formo *kiel kodo*, kiam vi sencimigas (`dd`).

Vi povas skribi viajn proprajn klasojn. En klaso, vi povas mem difini ĉiun el ĉi tiuj metodoj. Tiam ankaŭ viaj propraj objektoj presiĝas bele. Ni revenas al tio en la sekva parto. Tie, ni [kreas klasojn](/eo/oop/classes).

{% include nav.html %}
