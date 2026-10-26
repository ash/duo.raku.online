---
title: 'Solution: Verbinden mit Doppelpunkt'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
say <a b c>.reverse.join: '-';
```

🦋 Den Quellcode findest du in der Datei [colon-join.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/colon-calls/colon-join.raku).

## Ausgabe

```
c-b-a
```

## Kommentare

1. `.reverse` steht in der Mitte der Kette. Also behält es seine normale Form. `join` ist der letzte Aufruf. Also kann es den Doppelpunkt benutzen. Der Doppelpunkt übergibt ihm `'-'`, genau wie `join('-')`.

1. Nach `.reverse` ist die Liste `c, b, a`. Dann setzt `join` Bindestriche zwischen die Wörter. Das Ergebnis ist `c-b-a`. Die Doppelpunkt-Form funktioniert auch mit normalen Werten, nicht nur mit Blöcken.

{% include nav.html %}
