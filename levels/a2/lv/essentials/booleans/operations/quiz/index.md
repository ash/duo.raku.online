---
title: 'Tests: Loģiskās operācijas'
---

{% include menu.html %}

Zemāk ir dažas programmas. Ko izdrukā katra programma? Izvēlieties pareizo atbildi.

## 1

Šeit ir programma:

```raku
my $value = True && False;
say $value;
```

Ko tā izdrukā?

{:.quiz}
0 | True
1 | False

## 2 

Ko izdrukā otrā programma?

```raku
my $value = True && False || True;
say $value;
```

{:.quiz}
1 | True
0 | False

## 3

Ko izdrukā šī programma?

```raku
my $value = True || False && True;
say $value;
```

{:.quiz}
1 | True
0 | False

{% include quiz.html %}

## Komentāri

Otrajā un trešajā programmā ir izteiksmes ar trim Boolea vērtībām. Rezultāts ir atkarīgs no operāciju secības. Operatoram `&&` ir augstāka prioritāte nekā `||`. Tāpēc Raku vispirms veic `&&`.

{% include nav.html %}
