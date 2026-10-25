---
title: '`print`'
---

{% include menu.html %}

De ingebouwde routine `print` doet twee dingen:

1. Zet zijn argumenten om in een string. Daarvoor roept hij de `Str`-methode erop aan.
1. Stuurt de string naar de `STDOUT`-stroom.

Bij eenvoudige datatypes werkt `print` zoals [`say`](../say). Maar hij voegt geen nieuwe-regelteken toe aan het einde.

```raku
print 42;
print 'Raku';
```

Het programma print de waarden achter elkaar. Ook staat er geen nieuwe regel aan het einde van de hele uitvoer.

```console
$ raku t.raku
42Raku
```

Sommige datatypes bevatten veel waarden. Daarbij kunnen `print` en `say` verschillende resultaten geven. Probeer bijvoorbeeld arrays en hashes:

```raku
my @data = 'alpha', 'beta', 'gamma';
print @data;

print "\n"; # Om de delen te scheiden

my %data = alpha => 1, beta => 2, gamma => 3;
print %data;
```

Hier is de uitvoer:

```console
$ raku t.raku
alpha beta gamma
alpha	1
beta	2
gamma	3
```

Je kunt `print` ook als methode aanroepen:

```raku
my @data = 'alpha', 'beta', 'gamma';
@data.print;

"\n".print;
```

{% include nav.html %}
