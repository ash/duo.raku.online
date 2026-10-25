---
title: 'Izmantojot `repeat`'
---

{% include menu.html %}

`while` vai `until` cikls var neizpildīties nemaz. Tā notiek, ja nosacījums sākumā ir `False`. `repeat` bloks ir citāds. Tas vienmēr izpildās vismaz vienu reizi. Raku pārbauda nosacījumu pēc bloka. Pārbaudei jūs izmantojat tos pašus vārdus: `while` vai `until`.

Apskatiet šo programmu.

```raku
my $x = 100;
repeat {
    $x = prompt 'Ievadiet skaitli: ';
    say "Jūs ievadījāt $x.";
} while $x <= 10;
say "$x ir lielāks par 10.";
```

Sākumā mainīgais `$x` ir `100`. `while` nosacījums pārbauda, vai `$x` ir `10` vai mazāks. Tātad nosacījums jau ir `False`. Bet koda bloks tomēr izpildās vienu reizi.

```console
$ raku t.raku
Ievadiet skaitli: 10
Jūs ievadījāt 10.
Ievadiet skaitli: 20
Jūs ievadījāt 20.
20 ir lielāks par 10.
```

Tagad uzrakstīsim programmu ar `until`.

```raku
my $x = 0;
repeat {
    $x = prompt 'Ievadiet skaitli: ';
    say "Jūs ievadījāt $x.";
} until $x > 10;
say "$x ir lielāks par 10.";
```

Palaidiet to un pārbaudiet rezultātu:

```console
$ raku t.raku
Ievadiet skaitli: 5
Jūs ievadījāt 5.
Ievadiet skaitli: 15
Jūs ievadījāt 15.
15 ir lielāks par 10.
```

{% include nav.html %}
