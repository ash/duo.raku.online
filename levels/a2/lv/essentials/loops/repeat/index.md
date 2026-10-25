---
title: 'Izmantojot `repeat`'
---

{% include menu.html %}

Dažreiz `while` vai `until` bloks neizpildās nemaz. Tā notiek, kad nosacījums sākumā ir `False`. `repeat` bloks ir citāds: tas vienmēr izpildās vismaz vienu reizi. Raku pārbauda nosacījumu pēc bloka. Pārbaudei jūs izmantojat tos pašus vārdus, `while` vai `until`.

Apskatiet šo programmu.

```raku
my $x = 100;
repeat {
    $x = prompt 'Ievadiet skaitli: ';
    say "Jūs ievadījāt $x.";
} while $x <= 10;
say "$x ir lielāks par 10.";
```

Sākumā mainīgais `$x` ir `100`. `while` nosacījums pārbauda, vai `$x` ir mazāks par `10` vai vienāds ar to. Ar šo vērtību nosacījums jau ir `False`. Bet koda bloks tomēr izpildās vispirms.

```console
$ raku t.raku
Ievadiet skaitli: 10
Jūs ievadījāt 10.
Ievadiet skaitli: 20
Jūs ievadījāt 20.
20 ir lielāks par 10.
```

Tagad mainīsim programmu un izmantosim `until`.

```raku
my $x = 0;
repeat {
    $x = prompt 'Ievadiet skaitli: ';
    say "Jūs ievadījāt $x.";
} until $x > 10;
say "$x ir lielāks par 10.";
```

Palaidiet to un pārbaudiet, vai tā darbojas:

```console
$ raku t.raku
Ievadiet skaitli: 5
Jūs ievadījāt 5.
Ievadiet skaitli: 15
Jūs ievadījāt 15.
15 ir lielāks par 10.
```

{% include nav.html %}
