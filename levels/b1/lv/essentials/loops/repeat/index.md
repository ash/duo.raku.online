---
title: 'Izmantojot `repeat`'
---

{% include menu.html %}

`while` vai `until` bloks var neizpildīties nekad, ja nosacījums jau no sākuma ir `False`. Savukārt `repeat` bloks vienmēr izpildās vismaz vienu reizi. Tā nosacījums tiek pārbaudīts pēc bloka. Pārbaudei jūs izmantojat tos pašus vārdus, `while` vai `until`.

Paskatieties uz šo programmu.

```raku
my $x = 100;
repeat {
    $x = prompt 'Ievadiet skaitli: ';
    say "Jūs ievadījāt $x.";
} while $x <= 10;
say "$x ir lielāks par 10.";
```

Mainīgā `$x` sākuma vērtība ir `100`. `while` nosacījums pārbauda, vai `$x` ir mazāks par `10` vai vienāds ar to. Ar šo vērtību nosacījums jau ir `False`, bet bloks tomēr vispirms izpildās vienu reizi.

```console
$ raku t.raku
Ievadiet skaitli: 10
Jūs ievadījāt 10.
Ievadiet skaitli: 20
Jūs ievadījāt 20.
20 ir lielāks par 10.
```

Tagad mainīsim programmu, lai tā izmantotu `until`.

```raku
my $x = 0;
repeat {
    $x = prompt 'Ievadiet skaitli: ';
    say "Jūs ievadījāt $x.";
} until $x > 10;
say "$x ir lielāks par 10.";
```

Palaidiet to, lai pārbaudītu, vai tā darbojas tā, kā jūs gaidāt:

```console
$ raku t.raku
Ievadiet skaitli: 5
Jūs ievadījāt 5.
Ievadiet skaitli: 15
Jūs ievadījāt 15.
15 ir lielāks par 10.
```

{% include nav.html %}
