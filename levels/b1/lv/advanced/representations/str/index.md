---
title: 'Metode `.Str`'
---

{% include menu.html %}

Metode `.Str` atgriež vērtības **vienkāršas virknes** formu. Raku to izsauc katru reizi, kad izmanto vērtību *virknes kontekstā*. Tas notiek ar `print` un `put`, kā arī ar operatoru `~`, kas savieno virknes. Tas notiek arī tad, kad jūs ievietojat vērtību virknē dubultpēdiņās.

```raku
say 42.Str;    # 42
my @a = 'alpha', 'beta', 'gamma';
say @a.Str;    # alpha beta gamma
```

Ievērojiet, ka masīvs atgriezās **bez iekavām**. Tā elementi ir vienkārši savienoti ar atstarpēm. Tā ir redzamā atšķirība no [`.gist`](../gist), kas iekavas saglabā. Salīdziniet tās blakus:

```raku
my @data = 1, 2, 3;
say @data.gist; # [1 2 3]
say @data.Str;  # 1 2 3
```

Kad jūs ievietojat masīvu virknē, Raku izmanto `.Str`. Tāpēc masīvs tiek parādīts vienkāršā veidā:

```raku
my @data = 10, 20, 30;
say "data: @data[]"; # data: 10 20 30
```

{% include nav.html %}
