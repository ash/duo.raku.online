---
title: '`print`'
---

{% include menu.html %}

Lūk, ko dara iebūvētā rutīna `print`:

1. Izsauc `Str` metodi uz saviem argumentiem, lai pārvērstu tos par virkni.
1. Nosūta virkni uz `STDOUT` plūsmu.

Vienkāršiem datu tipiem `print` dod gandrīz tādu pašu izvadi kā [`say`](../say). Tikai beigās nav jaunas rindas rakstzīmes.

```raku
print 42;
print 'Raku';
```

Abas vērtības tiek izdrukātas tieši viena pēc otras. Arī visa izvade nebeidzas ar jaunu rindu.

```console
$ raku t.raku
42Raku
```

Ar datiem, kuros ir vairākas vērtības, rezultāts var atšķirties no `say`. Piemēram, izmēģiniet masīvus un vārdnīcas:

```raku
my @data = 'alpha', 'beta', 'gamma';
print @data;

print "\n"; # Lai atdalītu daļas

my %data = alpha => 1, beta => 2, gamma => 3;
print %data;
```

Šādi izskatās izvads:

```console
$ raku t.raku
alpha beta gamma
alpha	1
beta	2
gamma	3
```

Jūs varat izsaukt `print` rutīnu arī kā metodi:

```raku
my @data = 'alpha', 'beta', 'gamma';
@data.print;

"\n".print;
```

{% include nav.html %}
