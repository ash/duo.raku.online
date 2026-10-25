---
title: 'Risinājums: Dalīšana, izmantojot atņemšanu'
---

{% include menu.html %}

Dalīšana ir vienkārši atņemšana, ko veic daudzas reizes. Programmā ir `while` cikls, kas atņem `$b` no `$a`. Tas to atkārto, kamēr `$a` joprojām nav mazāks par `$b`. Mainīgais `$n` skaita, cik reizes cikls izpildās. Šis skaits ir arī rezultāts.

## Kods

Šeit ir pilnā programma:

```raku
my $a = 175;
my $b = 25;

my $n = 0;
while $a >= $b {
    $a -= $b;
    $n++;
}

say $n;
```

🦋 Atrodiet programmu failā [division-via-subtraction.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/division-via-subtraction.raku).

## Izvade

Palaidiet programmu vairākas reizes. Sāciet ar dotajām vērtībām, kas dalās bez atlikuma:

```console
$ raku exercises/loops/division-via-subtraction.raku
7
```

Tad izmēģiniet citas vērtības. Piemēram, iestatiet `$b` uz `20` un pārbaudiet, vai rezultāts ir pareizs:

```console
$ raku exercises/loops/division-via-subtraction.raku
8
```

{% include nav.html %}
