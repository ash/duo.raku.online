---
title: Multi-functies
---

{% include menu.html %}

Raku heeft _meervoudige dispatch_ op basis van de signatuur van een functie. Daarmee kunnen meerdere functies dezelfde naam hebben. Maar ze krijgen verschillende soorten invoergegevens. Schrijf de declarator `multi` voor elke variant van de functie.

```raku
multi sub add(Int $x, Int $y) { $x + $y }
multi sub add(Str $x, Str $y) { $x ~ $y }
```

Je kunt `sub` na `multi` weglaten.

Hier heeft dezelfde functie twee varianten. De compiler kijkt naar de argumenten in elke aanroep. Dan kiest hij de juiste variant. Dit is meervoudige dispatch. Vergelijk deze twee aanroepen:

```raku
say add(10, 20); # 30
say add('10', '20'); # 1020
```

De eerste aanroep voert de variant met integer-parameters uit. De tweede aanroep voert de tweede variant uit. Die variant verwacht twee strings.

## Letterlijke parameters

Hier is een interessant geval. Een variant kan een letterlijke waarde als parameter hebben. Een letterlijke waarde is een waarde in de code, zoals `42`. Kijk naar deze twee varianten:

```raku
multi sub f(42) {say 'Dit is het antwoord'}
multi sub f($x) {say "$x is niet het antwoord"}
```

Raku voert de eerste variant alleen uit als het argument precies 42 is. In alle andere gevallen voert Raku de tweede variant uit. De volgorde van de twee definities maakt niet uit.

```raku
f(10); # 10 is niet het antwoord
f(42); # Dit is het antwoord
```

{% include nav.html %}
