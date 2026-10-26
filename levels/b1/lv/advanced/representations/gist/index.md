---
title: 'Metode `.gist`'
---

{% include menu.html %}

Metode `.gist` atgriež vērtības **cilvēkam draudzīgu** attēlojumu. Tā ir forma, ko jūs gribētu *lasīt*. `say` un `note` izdrukā tieši to, jo tās izsauc `.gist` katram argumentam.

```raku
say 42.gist;     # 42
say 'Raku'.gist; # Raku
```

Vienkāršām vērtībām kopsavilkums ir vienkārši pati vērtība. Saliktiem datiem `.gist` pievieno nedaudz formatējuma, lai struktūru būtu viegli lasīt:

```raku
my @a = 'alpha', 'beta', 'gamma';
say @a.gist; # [alpha beta gamma]
```

Tipa objekts ir vērtība, kas apzīmē pašu tipu. Tā kopsavilkums ir tā nosaukums iekavās. Tas ļauj to viegli pamanīt izvadē:

```raku
say Int.gist; # (Int)
```

{% include nav.html %}
