---
title: 'Izmantojot `until`'
---

{% include menu.html %}

`until` cikls ir `while` pretstats. Tas izpilda koda bloku, līdz nosacījums kļūst `True`. Citiem vārdiem sakot, tas darbojas, kamēr nosacījums ir `False`.

Šeit atkal ir [programma no iepriekšējās lapas](../while). Tagad tā izmanto `until` un jaunu nosacījumu:

```raku
my $x = 0;
until $x > 10 {
    $x = prompt 'Ievadiet skaitli, kas nav lielāks par 10: ';
    say "Jūs ievadījāt $x.";
}
say "$x ir lielāks par 10.";
```

Palaidiet programmu un apskatiet izvadi:

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

## `until` pret `while`

Salīdziniet šīs divas rindas. Tās dara to pašu ar `while` un `until`:

```raku
while $x <= 10 { . . . }

until $x > 10 { . . . }
```

Abi nosacījumi ir pretēji viens otram. Tāpēc `while` un `until` darbojas kā pāris, tieši tāpat kā `if` un `unless`.

{% include nav.html %}
