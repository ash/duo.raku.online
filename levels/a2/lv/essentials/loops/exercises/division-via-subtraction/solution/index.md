---
title: 'Risinājums: Dalīšana, izmantojot atņemšanu'
---

{% include menu.html %}

Dalīšana ir atņemšana atkal un atkal. Programmā ir `while` cikls. Cikls atņem `$b` no `$a`. Tas to atkārto, kamēr `$a` nav mazāks par `$b`. Mainīgais `$n` skaita, cik reizes cikls izpildās. Šis skaitlis ir arī rezultāts, kas mums vajadzīgs.

## Kods

Šeit ir visa programma:

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

Palaidiet programmu dažas reizes. Vispirms izmantojiet dotās vērtības. Tās dalās bez atlikuma:

```console
$ raku exercises/loops/division-via-subtraction.raku
7
```

Tad mēģiniet citas vērtības. Piemēram, nomainiet `$b` uz `20` un pārbaudiet, vai rezultāts ir pareizs:

```console
$ raku exercises/loops/division-via-subtraction.raku
8
```

{% include nav.html %}
