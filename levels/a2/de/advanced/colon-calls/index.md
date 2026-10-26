---
title: Aufruf mit Doppelpunkt
translations_gpt:
---

{% include menu.html %}

Normalerweise stehen die Argumente einer Methode oder Subroutine in Klammern: `@a.grep(* > 5)`. Raku hat noch einen zweiten Weg. Setze einen **Doppelpunkt** nach dem Namen. Alles nach dem Doppelpunkt wird zur Liste der Argumente. Du brauchst gar keine Klammern:

```raku
say (1..10).grep: * %% 2; # (2 4 6 8 10)
```

Der Doppelpunkt in `grep:` macht dasselbe wie Klammern. `(1..10).grep: * %% 2` bedeutet genau dasselbe wie `(1..10).grep(* %% 2)`. Du kannst jede der beiden Formen benutzen:

```raku
say <a b c>.join('-'); # a-b-c
say <a b c>.join: '-'; # a-b-c
```

Die Doppelpunkt-Form ist bei manchen Methoden am schönsten. Diese Methoden nehmen einen **Block** oder einen [Whatever](/de/advanced/whatever)-Ausdruck. Der Doppelpunkt spart eine Ebene von Klammern. Vergleiche:

```raku
my @a = 3, 1, 2;

say @a.sort({ $^b <=> $^a }); # Klammern um den Block
say @a.sort: { $^b <=> $^a }; # Doppelpunkt — keine schließende Klammer nötig
```

Beide Zeilen geben `(3 2 1)` aus. Aber die Version mit dem Doppelpunkt ist leichter zu lesen. Bei einem langen Block gilt das noch mehr.

Aufrufe ohne Klammern kennst du schon. Du benutzt sie bei Listenoperatoren wie `say 1, 2, 3`. Dort nimmt `say` alles danach als seine Argumente. Die Doppelpunkt-Form ist dieselbe Idee für Methoden. Merke dir eine Regel. Die Doppelpunkt-Form nimmt den **Rest der Anweisung** als Argumente. Also muss sie am **Ende** einer Kette von Aufrufen stehen. Deshalb funktioniert `('a' .. 'z')».uc».ord.grep: 60 < * < 70`. `grep` ist der letzte Aufruf. In der Kette kommt nichts mehr danach. Musst du noch mehr Methoden aufrufen? Dann benutze die Form mit Klammern. Oder gruppiere die Teile des ganzen Ausdrucks mit Klammern. So wird der Code klar:

```raku
say (('a' .. 'z')».uc».ord.grep: 60 < * < 70)».chr # (A B C D E)
```

Pass bei einer Sache auf. Benutze den Doppelpunkt **und** Klammern nicht zusammen, wie in `.grep:( … )`. In Raku bedeutet `:( … )` etwas anderes. Das ist eine Signatur, als Wert geschrieben. Also kann Raku diesen Code nicht lesen. Benutze entweder `.grep( … )` oder `.grep: …`. Benutze eins davon, nicht beide.

{% include nav.html %}
