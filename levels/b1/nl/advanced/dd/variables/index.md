---
title: Variabelen dumpen
translations_gpt: Variabelen dumpen
---

{% include menu.html %}

Roep `dd` aan om te zien wat er in een variabele zit. Je gebruikt het op dezelfde manier als `say`:

```raku
my $var = 42;
dd $var;
```

`dd` toont zowel de waarde als de naam van de variabele:

```console
$var = 42
```

Als de variabele een gedeclareerd type heeft, toont `dd` ook het type. Vergelijk de uitvoer van dit programma met die van het vorige:

```raku
my Int $var = 42;
dd $var;
```

```console
Int $var = 42
```

Dit is het belangrijkste verschil met `say`. Eén `dd`-aanroep op een scalar vertelt je de naam van de variabele. Hij vertelt je ook het type van de gegevens, als dat bekend is. Zo kun je meerdere `dd`-aanroepen aan een programma toevoegen. Je ziet dan nog steeds welke uitvoer bij welke variabele hoort.

Je kunt ook complexere datastructuren dumpen, bijvoorbeeld arrays of hashes. Dan toont `dd` de waarde in een codeachtige vorm:

```raku
my @arr = 10, 20, [1, 2, 3], 30;
dd @arr;
```

```console
[10, 20, [1, 2, 3], 30]
```

Merk op dat je de geneste array duidelijk ziet. Maar de naam van de variabele wordt niet getoond. Hetzelfde werkt voor hashes, en `dd` toont hun sleutels in gesorteerde volgorde:

```raku
my %hash =
    gamma => 'g',
    alpha => 'a',
    beta  => 'b';
dd %hash;
```

```console
{:alpha("a"), :beta("b"), :gamma("g")}
```

{% include nav.html %}
