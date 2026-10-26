---
title: Pareizā metode
translations_gpt:
---

{% include menu.html %}

Ikdienas skalāriem, piemēram, skaitļiem un virknēm, visi trīs atveidojumi izskatās vienādi. Atšķirība parādās saliktām vai nedefinētām vērtībām. Šeit ir `Pair`, parādīts trijos veidos:

```raku
say (foo => 1).gist; # foo => 1
say (foo => 1).Str;  # foo	1
say (foo => 1).raku; # :foo(1)
```

Šeit ir aptuvens vispārīgs likums:

* [`.gist`](../gist) — izvadei, ko cilvēki *lasīs* (`say`, `note`).
* [`.Str`](../str) — *vienkārša teksta* izvadei (`print`, `put`, mainīgie virknēs, operators `~`).
* [`.raku`](../raku-method) — *kodam līdzīgai* formai, kad jūs atkļūdojat (`dd`).

Kad jūs rakstāt klasi, jūs varat katrai no šīm metodēm dot savu definīciju. Tad arī jūsu pašu objekti izdrukājas glīti. Mēs pie tā atgriezīsimies, kad nākamajā daļā [veidosim klases](/lv/oop/classes).

{% include nav.html %}
