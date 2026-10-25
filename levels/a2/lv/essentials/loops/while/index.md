---
title: 'Izmantojot `while`'
---

{% include menu.html %}

`while` ciklam ir nosacījums un koda bloks. Nosacījums ir `True` vai `False`. Raku izpilda bloku atkal un atkal, _kamēr_ nosacījums ir `True`.

```raku
my $x = 0;
while $x <= 10 {
    $x = prompt 'Ievadiet skaitli, kas nav lielāks par 10: ';
    say "Jūs ievadījāt $x.";
}
say "$x ir lielāks par 10.";
```

Programma prasa jums skaitli. Ja skaitlis ir 10 vai mazāks, cilpa darbojas vēlreiz. Ja skaitlis ir lielāks par 10, nosacījums `$x <= 10` ir `False`. Tad cilpa apstājas. Programma pāriet uz nākamo rindu.

```console
$ raku t.raku
Ievadiet skaitli, kas nav lielāks par 10: 10
Jūs ievadījāt 10.
Ievadiet skaitli, kas nav lielāks par 10: 4
Jūs ievadījāt 4.
Ievadiet skaitli, kas nav lielāks par 10: 1
Jūs ievadījāt 1.
Ievadiet skaitli, kas nav lielāks par 10: 20
Jūs ievadījāt 20.
20 ir lielāks par 10.
```

{% include nav.html %}
