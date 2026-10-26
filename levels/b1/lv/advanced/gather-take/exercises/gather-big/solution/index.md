---
title: 'Risinājums: Vākt līdz pilnam'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
my $sum = 0;
my @result = gather for 1..100 {
    $sum += $_;
    last if $sum > 10;
    take $_;
}

say @result;
```

🦋 Atrodiet programmu failā [gather-big.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/gather-take/gather-big.raku).

## Izvade

```
[1 2 3 4]
```

## Komentāri

1. Cikls saņem simts skaitļu diapazonu, daudz vairāk, nekā tas izmantos. Tas ir labi, jo cikls apstājas pats. Tiklīdz `$sum` pārsniedz `10`, `last` iziet no cikla. Pārējie skaitļi netiek pat apskatīti.

1. Secībai bloka iekšienē ir nozīme. Mēs vispirms pieskaitām mainīgajam `$sum` un pārbaudām robežu, pirms paņemam skaitli. Tāpēc skaitlis, kas padara summu lielāku par `10` (šeit tas ir `5`), netiek savākts. Summa sasniedz tieši `10` pēc `4`, tāpēc saraksts ir `1, 2, 3, 4`.

1. Ar `for` palīdzību `gather`/`take` var iziet agrāk, bet `grep` to nevar. `grep` vienmēr iet cauri visam sarakstam, bet šeit mēs izvēlamies, kad apstāties.

{% include nav.html %}
