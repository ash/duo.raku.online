---
title: 'Risinājums: Ābolu dalīšana'
---

{% include menu.html %}

Šeit ir risinājums problēmai.

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

Ar ievades skaitļiem 3 un 11 programma izdrukā šo:

```console
$ raku exercises/numbers/apple-sharing.raku
Katrs cilvēks saņem 3 ābolu(s).
Paliek 2 ābolu(s).
```

Mainiet `$N` un `$K` sākuma vērtības, lai izmēģinātu citas situācijas:

* `$K` ir `$N` daudzkārtnis, piemēram, `12` un `3`;
* `$K` ir vienāds ar `$N`;
* `$K` ir mazāks par `$N`.

## Komentāri

Programma izmanto divus operatorus: `div` veselu skaitļu dalīšanai un `%` dalīšanas atlikumam. Cits veids ir veikt aprēķinus šādi:

```raku
my $gets = $K div $N;
my $remains = $K - $N * $gets;
```

Pievērsiet uzmanību arī tam, kā Raku ievieto mainīgo vērtības virknē.

{% include nav.html %}
