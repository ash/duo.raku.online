---
title: 'Metode `.gist`'
---

{% include menu.html %}

Metode `.gist` atgriež vērtības **cilvēkam draudzīgu** formu. Tā ir forma, ko jūs gribat *lasīt*. `say` izdrukā tieši šo formu. `note` arī to izdrukā. Tās izsauc `.gist` katram argumentam.

```raku
say 42.gist;     # 42
say 'Raku'.gist; # Raku
```

Vienkāršām vērtībām kopsavilkums ir tikai pati vērtība. Dažiem datiem ir vairākas daļas. Šādiem datiem `.gist` pievieno nedaudz formatējuma. Tad jūs joprojām varat viegli lasīt struktūru:

```raku
my @a = 'alpha', 'beta', 'gamma';
say @a.gist; # [alpha beta gamma]
```

Tipa objekts ir vērtība. Tā apzīmē pašu tipu. Tā kopsavilkums ir tipa nosaukums iekavās. Tāpēc jūs to viegli redzat izvadē:

```raku
say Int.gist; # (Int)
```

{% include nav.html %}
