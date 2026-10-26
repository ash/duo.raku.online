---
title: Aufruf mit Doppelpunkt
translations_gpt:
---

{% include menu.html %}

Wenn du eine Methode oder eine Subroutine aufrufst, setzt du ihre Argumente normalerweise in Klammern: `@a.grep(* > 5)`. Raku hat auch eine zweite Form. Du setzt einen **Doppelpunkt** nach dem Namen. Dann wird alles danach zur Liste der Argumente. Du brauchst gar keine Klammern:

```raku
say (1..10).grep: * %% 2; # (2 4 6 8 10)
```

Der Doppelpunkt in `grep:` hat dieselbe Aufgabe wie die Klammern. Also bedeutet `(1..10).grep: * %% 2` genau `(1..10).grep(* %% 2)`. Du kannst immer die eine Form statt der anderen benutzen:

```raku
say <a b c>.join('-'); # a-b-c
say <a b c>.join: '-'; # a-b-c
```

Die Doppelpunkt-Form ist am angenehmsten bei Methoden, die einen **Block** oder einen [Whatever](/de/advanced/whatever)-Ausdruck nehmen. Das liegt daran, dass sie eine Ebene von Klammern in Klammern spart. Vergleiche:

```raku
my @a = 3, 1, 2;

say @a.sort({ $^b <=> $^a }); # Klammern um den Block
say @a.sort: { $^b <=> $^a }; # Doppelpunkt — keine schließende Klammer nötig
```

Beide Zeilen geben `(3 2 1)` aus, aber die Doppelpunkt-Version ist leichter zu lesen. Das gilt besonders, wenn der Block lang ist.

Aufrufe ohne Klammern benutzt du schon bei Listenoperatoren wie `say 1, 2, 3`. Dort nimmt `say` alles, was danach kommt, als seine Argumente. Die Doppelpunkt-Form ist dasselbe für Methodenaufrufe. Du musst dir nur eine Regel merken. Die Doppelpunkt-Form nimmt den **Rest der Anweisung** als ihre Argumente. Also muss sie am **Ende** einer Kette von Aufrufen stehen. Deshalb funktioniert `('a' .. 'z')».uc».ord.grep: 60 < * < 70`. Hier ist `grep` der letzte Aufruf, und danach hängt nichts mehr in der Kette. Wenn du noch mehr Methoden aufrufen musst, benutze stattdessen die Form mit Klammern. Oder gruppiere die Teile des ganzen Ausdrucks, damit er klar wird:

```raku
say (('a' .. 'z')».uc».ord.grep: 60 < * < 70)».chr # (A B C D E)
```

Auf eine Sache musst du achten. Benutze den Doppelpunkt **und** Klammern nicht zusammen, wie in `.grep:( … )`. Das kollidiert mit `:( … )`, der Syntax für ein Signatur-Literal. Also kann Raku den Code nicht lesen. Benutze entweder `.grep( … )` oder `.grep: …`. Benutze das eine oder das andere, nicht beides.

{% include nav.html %}
