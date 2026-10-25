---
title: 'Risinājums: Ābolu dalīšana'
---

{% include menu.html %}

Šeit ir risinājums.

## Kods

```raku
my $N = 3;
my $K = 11;

my $gets = $K div $N;
my $remains = $K % $N;

say "Katrs cilvēks saņem $gets ābolu(s).";
say "Paliek $remains ābolu(s).";
```

🦋 Pilnu kodu var atrast failā [apple-sharing.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/apple-sharing.raku).

## Izvade

Ievades skaitļi ir 3 un 11. Ar tiem programma izdrukā šo:

```console
$ raku exercises/numbers/apple-sharing.raku
Katrs cilvēks saņem 3 ābolu(s).
Paliek 2 ābolu(s).
```

Mainiet `$N` un `$K` sākuma vērtības. Izmēģiniet citus gadījumus:

* `$K` dalās ar `$N` bez atlikuma, piemēram, `12` un `3`;
* `$K` ir vienāds ar `$N`;
* `$K` ir mazāks par `$N`.

## Komentāri

Programma izmanto divus operatorus. Operators `div` veic veselu skaitļu dalīšanu. Operators `%` dod dalīšanas atlikumu. Jūs varat veikt aprēķinus arī šādi:

```raku
my $gets = $K div $N;
my $remains = $K - $N * $gets;
```

Apskatiet arī virkni. Raku tajā interpolē mainīgos. Tas nozīmē, ka Raku ieliek virknē to vērtības.

{% include nav.html %}
