---
title: Lijsten
---

{% include menu.html %}

Een list is ook een geordende verzameling van waarden. Maar hij is niet zoals een array. Een list is _onveranderlijk_. Je kunt de elementen niet veranderen. Je kunt ook geen elementen toevoegen of verwijderen. Om een list te schrijven, zet je komma's tussen de waarden. Vaak staan er haakjes omheen:

```raku
my $colours = ('red', 'green', 'blue');
```

Je kunt de elementen van een list lezen via hun index. Je kunt ook vragen hoeveel elementen er zijn. Het is hetzelfde als bij een array:

```raku
my $colours = ('red', 'green', 'blue');
say $colours[0];    # red
say $colours.elems; # 3
```

Probeer nu een element te veranderen. Hier zie je het verschil. Bij een array werkt het. Elk element van een array is een container:

```raku
my @array = 1, 2, 3;
@array[0] = 10;
say @array; # [10 2 3]
```

Bij een list krijg je een fout. De elementen van een list zijn gewoon waarden. Het zijn geen containers:

```raku
my $list = (1, 2, 3);
$list[0] = 10;
```

Het tweede programma stopt. Het toont deze melding:

```
Cannot modify an immutable List ((1 2 3))
  in block <unit> at t.raku line 2
```

Moet je de gegevens dus veranderen? Gebruik dan een array, met de `@` sigil. Moet je alleen een paar waarden in een vaste volgorde bewaren? Gebruik dan een list.

{% include nav.html %}
