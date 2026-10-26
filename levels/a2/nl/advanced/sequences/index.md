---
title: Reeksen
translations_gpt:
---

{% include menu.html %}

Een _reeks_ (sequence) is een serie waarden in een vaste volgorde. Raku maakt ze een voor een. Raku bouwt reeksen met de `...`-operator. Je geeft hem een paar waarden. De operator vindt het patroon erin. Dan maakt hij de rest van de waarden, tot aan een eindpunt. Het eindpunt is de waarde waar de reeks stopt.

In het eenvoudigste geval telt de reeks van de ene waarde tot de andere:

```raku
say 1 ... 5; # (1 2 3 4 5)
```

Je kunt aan het begin twee waarden geven. Dan vindt Raku de stap ertussen. Raku gaat door met dezelfde stap. Zo maak je een rekenkundige reeks:

```raku
say 1, 3 ... 11; # (1 3 5 7 9 11)
```

Hier geven de waarden `1, 3` aan het begin een stap van twee. Raku telt dus steeds twee op. Het stopt als het bij `11` komt.

De `...`-operator geeft een waarde van het type `Seq`:

```raku
say (1 ... 5).WHAT; # (Seq)
```

De volgende onderwerpen tonen andere patronen die de `...`-operator kent. Ze laten ook zien dat een reeks lui (lazy) kan zijn. Die kan zelfs oneindig zijn en geen einde hebben.

{% include nav.html %}
