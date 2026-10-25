---
title: '`print`'
---

{% include menu.html %}

Dit is wat de ingebouwde routine `print` doet:

1. Roept de `Str`-methode aan op zijn argumenten om ze naar een string om te zetten.
1. Stuurt de string naar de `STDOUT`-stroom.

Bij eenvoudige datatypes geeft `print` bijna dezelfde uitvoer als [`say`](../say). Alleen staat er geen nieuwe-regelteken aan het einde.

```raku
print 42;
print 'Raku';
```

De twee waarden worden direct na elkaar geprint. De hele uitvoer eindigt ook niet met een nieuwe regel.

```console
$ raku t.raku
42Raku
```

Bij gegevens met meerdere waarden kan het resultaat anders zijn dan bij `say`. Probeer bijvoorbeeld arrays en hashes:

```raku
my @data = 'alpha', 'beta', 'gamma';
print @data;

print "\n"; # Om de delen te scheiden

my %data = alpha => 1, beta => 2, gamma => 3;
print %data;
```

Dit is hoe de uitvoer eruitziet:

```console
$ raku t.raku
alpha beta gamma
alpha	1
beta	2
gamma	3
```

Je kunt de routine `print` ook als methode aanroepen:

```raku
my @data = 'alpha', 'beta', 'gamma';
@data.print;

"\n".print;
```

{% include nav.html %}
