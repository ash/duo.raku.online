---
title: 'Solution: Ein Doppelpunkt-map'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
say (1..10).map(* * 2).grep: * > 10;
```

🦋 Den Quellcode findest du in der Datei [colon-map.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/colon-calls/colon-map.raku).

## Ausgabe

```
(12 14 16 18 20)
```

## Kommentare

1. Nur `grep` kann die Doppelpunkt-Form benutzen. Es ist der letzte Aufruf in der Kette. Der Doppelpunkt macht `* > 10` zu seinem Argument. Das ist genau wie `grep(* > 10)`. Wir müssen das Ergebnis noch ausgeben. Also benutzen wir `say` jetzt als Funktion, nicht als Methode.

1. Der Aufruf von `map` muss seine Klammern behalten. Wenn du `.map: * * 2` schreibst, gibt es ein Problem. Der Doppelpunkt nimmt auch `.grep(* > 10)` mit. Das wird ein Teil der Argumente von `map`. Dann bricht die Kette.

{% include nav.html %}
