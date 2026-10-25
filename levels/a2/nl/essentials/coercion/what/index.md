---
title: Introspectie met `WHAT`
---

{% include menu.html %}

Je kunt het type van de gegevens in een variabele zien. Roep daarvoor de `WHAT`-methode op de variabele aan:

```raku
my $n = 42;
my $s = '42';
say $n.WHAT; # (Int)
say $s.WHAT; # (Str)
```

Raku drukt het type af tussen haakjes. Je ziet het in de opmerkingen. Bijvoorbeeld `(Int)` of `(Str)`.

Je kunt een methode ook direct op een letterlijke waarde aanroepen. Een letterlijke waarde is een waarde in de code. Bijvoorbeeld:

```raku
say 42.WHAT;      # (Int)
say (-1).WHAT;    # (Int)
say 'Hello'.WHAT; # (Str)
say True.WHAT;    # (Bool)
```

Let op de haakjes rond `-1`. We hebben ze hier nodig. Kijk naar `say -1.WHAT` zonder haakjes. Hier roept Raku eerst `1.WHAT` aan. Dan probeert Raku een minteken voor het resultaat te zetten. Dat leidt tot een uitzondering, een soort fout.

{% include nav.html %}
