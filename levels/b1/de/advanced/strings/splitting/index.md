---
title: Aufteilen und Verbinden
---

{% include menu.html %}

Es gibt mehrere Arten, einen String in Teile zu zerlegen und sie wieder zusammenzufügen.

Die Methode `words` teilt einen String an den Leerzeichen in eine Liste von Wörtern auf:

```raku
say 'Hello big World'.words; # (Hello big World)
```

Die Methode `split` teilt einen String an einem Trennzeichen deiner Wahl:

```raku
say 'a,b,c'.split(','); # (a b c)
```

Ein wichtiger Sonderfall ist das Teilen am **leeren String** `''`. Es zerlegt einen String in seine einzelnen Zeichen. Aber es fügt auch ganz am Anfang und ganz am Ende einen leeren String ein. Deshalb hat das Ergebnis zwei Elemente mehr, als du vielleicht erwartest:

```raku
say 'abc'.split('').elems;        # 5 — the three letters, plus an empty string at each end
say 'abc'.split('', :skip-empty); # (a b c) — the :skip-empty adverb drops the empties
```

Um einen String in Zeichen zu zerlegen, kannst du die Methode `comb` ohne Argumente aufrufen. Sie macht das direkt, und es gibt keine zusätzlichen leeren Strings, die du entfernen musst:

```raku
say 'Raku'.comb; # (R a k u)
```

Für den umgekehrten Weg benutze die Methode `join`. Sie fügt eine Liste von Werten zu einem String zusammen und setzt ein Trennzeichen dazwischen:

```raku
say <a b c>.join('-'); # a-b-c
```

Zwei weitere Methoden arbeiten mit Teilen eines Strings. Die Methode `substr` gibt ein Stück eines Strings zurück. Du gibst ihr eine Startposition und, wenn du willst, eine Länge:

```raku
say 'Hello World'.substr(0, 5); # Hello
say 'Hello World'.substr(6);    # World
```

Und `trim` entfernt die Leerzeichen am Anfang und am Ende eines Strings:

```raku
say '  hi  '.trim; # hi
```

{% include nav.html %}
