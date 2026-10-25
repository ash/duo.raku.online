---
title: '`print`'
---

{% include menu.html %}

Iebūvētā rutīna `print` dara divas lietas:

1. Pārvērš savus argumentus par virkni. Lai to izdarītu, tā izsauc uz tiem `Str` metodi.
1. Nosūta virkni uz `STDOUT` plūsmu.

Ar vienkāršiem datu tipiem `print` darbojas kā [`say`](../say). Bet tā nepievieno jaunas rindas rakstzīmi beigās.

```raku
print 42;
print 'Raku';
```

Programma izdrukā vērtības vienu pēc otras. Arī visas izvades beigās nav jaunas rindas.

```console
$ raku t.raku
42Raku
```

Daži datu tipi glabā daudzas vērtības. Ar tiem `print` un `say` var dot dažādus rezultātus. Izmēģiniet, piemēram, masīvus un vārdnīcas:

```raku
my @data = 'alpha', 'beta', 'gamma';
print @data;

print "\n"; # Lai atdalītu daļas

my %data = alpha => 1, beta => 2, gamma => 3;
print %data;
```

Šeit ir izvade:

```console
$ raku t.raku
alpha beta gamma
alpha	1
beta	2
gamma	3
```

Jūs varat izsaukt `print` arī kā metodi:

```raku
my @data = 'alpha', 'beta', 'gamma';
@data.print;

"\n".print;
```

{% include nav.html %}
