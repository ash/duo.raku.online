---
title: 'Izmantojot `repeat`'
---

{% include menu.html %}

`while` un `until` bloki var neizpildīties nekad, ja nosacījums sākumā ir `False`. Savukārt `repeat` bloks vienmēr izpildās vismaz vienu reizi. Nosacījums tiek pārbaudīts pēc koda bloka. Pārbaudei jūs izmantojat tos pašus vārdus `while` vai `until`.

Apskatiet šo programmu.

```raku
my $x = 100;
repeat {
    $x = prompt 'Ievadiet skaitli: ';
    say "Jūs ievadījāt $x.";
} while $x <= 10;
say "$x ir lielāks par 10.";
```

Mainīgajam `$x` sākumā ir vērtība `100`, un `while` nosacījums pārbauda, vai `$x` ir mazāks par `10` vai vienāds ar to. Ar šo vērtību nosacījums jau ir `False`, bet koda bloks tomēr vispirms izpildās vienu reizi.

```console
$ raku t.raku
Ievadiet skaitli: 10
Jūs ievadījāt 10.
Ievadiet skaitli: 20
Jūs ievadījāt 20.
20 ir lielāks par 10.
```

Mainīsim programmu, lai tā vietā izmantotu `until`.

```raku
my $x = 0;
repeat {
    $x = prompt 'Ievadiet skaitli: ';
    say "Jūs ievadījāt $x.";
} until $x > 10;
say "$x ir lielāks par 10.";
```

Palaidiet to, lai pārbaudītu, vai tā darbojas, kā paredzēts:

```console
$ raku t.raku
Ievadiet skaitli: 5
Jūs ievadījāt 5.
Ievadiet skaitli: 15
Jūs ievadījāt 15.
15 ir lielāks par 10.
```

{% include nav.html %}
