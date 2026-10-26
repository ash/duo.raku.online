---
title: Reeksen
translations_gpt:
---

{% include menu.html %}

Een _reeks_ (sequence) is een serie waarden op volgorde, die na elkaar worden gemaakt. Raku bouwt reeksen met de `...`-operator. Die vindt het patroon in de waarden die je hem geeft. Daarna maakt hij de rest, tot aan een eindpunt.

De eenvoudigste reeks telt gewoon van de ene waarde tot de andere:

```raku
say 1 ... 5; # (1 2 3 4 5)
```

Als je twee startwaarden geeft, vindt Raku de stap ertussen. Daarna gaat het door met dezelfde stap. Zo maak je een rekenkundige reeks:

```raku
say 1, 3 ... 11; # (1 3 5 7 9 11)
```

Hier maken de startwaarden `1, 3` de stap twee. Raku telt dus op in stappen van twee en stopt als het `11` bereikt.

De waarde die `...` maakt, is van het type `Seq`:

```raku
say (1 ... 5).WHAT; # (Seq)
```

De volgende onderwerpen laten andere patronen zien die de `...`-operator kan herkennen. Ze laten ook zien hoe een reeks lui (lazy) kan zijn, en zelfs oneindig.

{% include nav.html %}
