---
title: Aufteilen und Verbinden
---

{% include menu.html %}

Du kannst einen String auf verschiedene Arten in Teile zerlegen. Du kannst die Teile auch wieder zusammensetzen.

Die Methode `words` zerlegt einen String in eine Liste von Wörtern. Leerraum, zum Beispiel ein Leerzeichen, trennt die Wörter:

```raku
say 'Hello big World'.words; # (Hello big World)
```

Die Methode `split` schneidet einen String an einem Trennzeichen. Du wählst das Trennzeichen:

```raku
say 'a,b,c'.split(','); # (a b c)
```

Hier ist ein wichtiger Sonderfall. Du kannst am **leeren String** `''` teilen. Dann bekommst du die einzelnen Zeichen des Strings. Aber du bekommst auch zwei zusätzliche leere Strings. Sie stehen ganz am Anfang und ganz am Ende. Deshalb hat das Ergebnis zwei Elemente mehr, als du erwartest:

```raku
say 'abc'.split('').elems;        # 5 — the three letters, plus an empty string at each end
say 'abc'.split('', :skip-empty); # (a b c) — the :skip-empty adverb drops the empties
```

Willst du einen String in Zeichen zerlegen? Rufe die Methode `comb` ohne Argumente auf. Sie macht das direkt. Es gibt keine zusätzlichen leeren Strings:

```raku
say 'Raku'.comb; # (R a k u)
```

Die Methode `join` macht das Gegenteil. Sie verbindet eine Liste von Werten zu einem String. Sie setzt ein Trennzeichen zwischen die Werte:

```raku
say <a b c>.join('-'); # a-b-c
```

Zwei weitere Methoden arbeiten mit Teilen eines Strings. Die Methode `substr` gibt dir ein Stück von einem String. Du gibst ihr eine Startposition. Wenn du willst, kannst du ihr auch eine Länge geben:

```raku
say 'Hello World'.substr(0, 5); # Hello
say 'Hello World'.substr(6);    # World
```

Und `trim` entfernt die Leerzeichen an beiden Enden eines Strings:

```raku
say '  hi  '.trim; # hi
```

{% include nav.html %}
