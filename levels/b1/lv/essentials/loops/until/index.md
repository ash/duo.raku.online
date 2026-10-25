---
title: 'Izmantojot `until`'
---

{% include menu.html %}

`until` cikls dara pretējo tam, ko dara `while`. Tas izpilda koda bloku, līdz nosacījums kļūst `True`. Citiem vārdiem sakot, tas darbojas, kamēr nosacījums ir `False`.

Šī ir [programma no iepriekšējās lapas](../while), bet tagad ar `until` un jaunu nosacījumu:

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

Salīdziniet divas programmas, kas dara to pašu, vienu ar `while` un otru ar `until`:

```raku
while $x <= 10 { . . . }

until $x > 10 { . . . }
```

Kā redzat, katrs nosacījums ir otra pretstats. Tātad `while` un `until` ir pāris tāpat kā `if` un `unless`.

{% include nav.html %}
