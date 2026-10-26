---
title: Variabelen dumpen
translations_gpt: Variabelen dumpen
---

{% include menu.html %}

Roep `dd` aan om de waarde van een variabele te zien. Het is net als `say`:

```raku
my $var = 42;
dd $var;
```

`dd` toont de waarde. Het toont ook de naam van de variabele:

```console
$var = 42
```

Een variabele kan een gedeclareerd type hebben. Dan toont `dd` ook het type. Vergelijk de uitvoer van dit programma met het vorige:

```raku
my Int $var = 42;
dd $var;
```

```console
Int $var = 42
```

Dit is het belangrijkste verschil met `say`. Roep `dd` een keer aan op een scalar. Het toont je de naam van de variabele. Het toont ook het type van de gegevens, als Raku dat kent. Zo kun je meerdere `dd`-aanroepen in een programma zetten. Je weet nog steeds welke uitvoer bij welke variabele hoort.

Je kunt ook grotere datastructuren dumpen, zoals arrays of hashes. Dan toont `dd` de waarde in een vorm die op code lijkt:

```raku
my @arr = 10, 20, [1, 2, 3], 30;
dd @arr;
```

```console
[10, 20, [1, 2, 3], 30]
```

Let op: je ziet de binnenste array duidelijk. Maar `dd` toont hier niet de naam van de variabele. Bij hashes werkt het op dezelfde manier. `dd` toont de sleutels van een hash in gesorteerde volgorde:

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
