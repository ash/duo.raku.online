---
title: Pareizā metode
translations_gpt:
---

{% include menu.html %}

Ņemiet vienkāršus skalārus, piemēram, skaitļus un virknes. Šeit visas trīs formas izskatās vienādi. Tās atšķiras vērtībām ar vairākām daļām. Tās atšķiras arī nedefinētām vērtībām. Šeit ir `Pair`, parādīts trijos veidos:

```raku
say (foo => 1).gist; # foo => 1
say (foo => 1).Str;  # foo	1
say (foo => 1).raku; # :foo(1)
```

Šeit ir vienkāršs likums:

* [`.gist`](../gist) — izvadei, ko cilvēki *lasa* (`say`, `note`).
* [`.Str`](../str) — izvadei, kas ir *vienkāršs teksts* (`print`, `put`, vērtības virknēs, operators `~`).
* [`.raku`](../raku-method) — formai, kas ir *kā kods*, kad jūs atkļūdojat (`dd`).

Jūs varat rakstīt savas klases. Klasē jūs varat paši definēt katru no šīm metodēm. Tad arī jūsu pašu objekti izdrukājas glīti. Mēs pie tā atgriežamies nākamajā daļā. Tur mēs [veidojam klases](/lv/oop/classes).

{% include nav.html %}
