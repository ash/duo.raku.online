---
title: 'Risinājums: Vākt līdz pilnam'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. Cikls saņem simts skaitļu diapazonu. Tam vajag daudz mazāk. Bet tas ir labi. Cikls apstājas pats. Kad `$sum` kļūst lielāks par `10`, `last` iziet no cikla. Programma nekad neskatās uz pārējiem skaitļiem.

1. Secība blokā ir svarīga. Vispirms mēs pieskaitām skaitli mainīgajam `$sum`. Tad mēs pārbaudām robežu. Pēc tam mēs paņemam skaitli. Viens skaitlis padara summu lielāku par `10`. Šeit tas ir skaitlis `5`. Kods to nepaņem. Pēc `4` summa ir tieši `10`. Tāpēc saraksts ir `1, 2, 3, 4`.

1. Ar `for` palīdzību `gather`/`take` var apstāties agri. `grep` to nevar. `grep` vienmēr skatās visu sarakstu. Šeit mēs izvēlamies, kad apstāties.

{% include nav.html %}
