---
title: 'Izmantojot `while`'
---

{% include menu.html %}

`while` konstruktam ir Būla nosacījums un koda bloks. Raku izpilda koda bloku atkal un atkal, _kamēr_ nosacījums ir `True`.

```raku
my $x = 0;
while $x <= 10 {
    $x = prompt 'Ievadiet skaitli, kas nav lielāks par 10: ';
    say "Jūs ievadījāt $x.";
}
say "$x ir lielāks par 10.";
```

Programma lūdz jūs ievadīt skaitli. Ja skaitlis nav lielāks par 10, cilpas ķermenis izpildās vēlreiz. Tiklīdz skaitlis pārkāpj nosacījumu `$x <= 10`, cilpa beidzas, un programma turpina ar nākamo rindu.

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
