---
title: Masīvi
translations_gpt:
---

{% include menu.html %}

Masīvs ir sakārtots konteineris. Katrs masīva elements arī ir skalārs konteineris.

```raku
my @array = 100, 200, 300;
my @letters = 'a', 'b', 'c';
```

Sigils `@` parāda, ka mainīgais darbojas kā `Positional` objekts. Tāpēc jūs varat iegūt katru elementu pēc tā indeksa:

```raku
say @array[1];   # 200
say @letters[2]; # c
```

Katrs elements ir skalārs konteineris. Tāpēc jūs varat piešķirt tam jaunu vērtību. Tas darbojas tieši kā parasts skalārs mainīgais:

```raku
my @array = 100, 200, 300;
@array[0] = 10;
say @array; # [10 200 300]
```

Jūs varat piešķirt arī cita tipa vērtību. Piemēram:

```raku
my @array = 100, 200, 300;
@array[0] = 'ten';
say @array; # [ten 200 300]
```

Tāpēc masīvi ir _maināmi_. Tas nozīmē, ka jūs varat tos mainīt. Katra vieta masīvā ir konteineris. Tas var saņemt jaunu vērtību. [Saraksti](/lv/advanced/ordered-containers/lists) ir citādi. Jūs to redzēsiet nākamajā tēmā.

{% include nav.html %}
