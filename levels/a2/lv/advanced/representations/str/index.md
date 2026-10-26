---
title: 'Metode `.Str`'
---

{% include menu.html %}

Metode `.Str` atgriež vērtības **vienkāršas virknes** formu. Raku to izsauc, kad tam vajag vērtību kā virkni. To sauc par *virknes kontekstu*. `print` un `put` to izsauc. Arī operators `~` to izsauc. Šis operators savieno virknes. Tā darbojas arī ar vērtībām virknē dubultpēdiņās.

```raku
say 42.Str;    # 42
my @a = 'alpha', 'beta', 'gamma';
say @a.Str;    # alpha beta gamma
```

Ievērojiet, ka masīvs atgriežas **bez iekavām**. Tā elementi ir vienkārši savienoti ar atstarpēm. Šeit jūs redzat atšķirību no [`.gist`](../gist). Metode `.gist` saglabā iekavas. Salīdziniet abas metodes blakus:

```raku
my @data = 1, 2, 3;
say @data.gist; # [1 2 3]
say @data.Str;  # 1 2 3
```

Vērtība virknē dubultpēdiņās izmanto `.Str`. Tāpēc masīvs virknē parādās vienkāršā veidā:

```raku
my @data = 10, 20, 30;
say "data: @data[]"; # data: 10 20 30
```

{% include nav.html %}
