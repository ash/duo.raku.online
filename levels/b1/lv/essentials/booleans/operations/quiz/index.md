---
title: 'Tests: Loģiskās operācijas'
---

{% include menu.html %}

Katrā sadaļā zemāk izvēlieties atbildi, kas parāda, ko programma izdrukā.

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

Kāds ir šīs programmas izvads?

```raku
my $value = True || False && True;
say $value;
```

{:.quiz}
1 | True
0 | False

{% include quiz.html %}

## Komentāri

Otrajā un trešajā programmā ir izteiksmes ar trim Boolea vērtībām. Rezultāts ir atkarīgs no tā, kādā secībā Raku veic operācijas. Operatoram `&&` ir augstāka prioritāte nekā `||`, tāpēc Raku to veic pirmo.

{% include nav.html %}
