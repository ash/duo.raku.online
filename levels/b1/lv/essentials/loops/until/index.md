---
title: 'Izmantojot `until`'
---

{% include menu.html %}

Konstrukts `until` ir `while` pretstats. Tas izpilda koda bloku, līdz nosacījums kļūst `True` (citiem vārdiem sakot, kamēr nosacījums ir `False`).

Šeit ir [programma no iepriekšējās lapas](../while), pārveidota tā, lai izmantotu `until` un jaunu nosacījumu:

```raku
my $x = 0;
until $x > 10 {
    $x = prompt 'Ievadiet skaitli, kas nav lielāks par 10: ';
    say "Jūs ievadījāt $x.";
}
say "$x ir lielāks par 10.";
```

Palaidiet programmu un pārbaudiet rezultātu:

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

Salīdziniet divas programmas, kas dara to pašu ar `while` un `until`:

```raku
while $x <= 10 { . . . }

until $x > 10 { . . . }
```

Kā redzat, katrs nosacījums ir otra pretstats. Šādā ziņā `while` un `until` ir saistīti tāpat kā `if` un `unless`.

{% include nav.html %}
