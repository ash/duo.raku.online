---
title: 'Solution: Ein Doppelpunkt-map'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Die Doppelpunkt-Form geht nur bei `grep`, dem letzten Aufruf in der Kette. Der Doppelpunkt macht `* > 10` zu seinem Argument, genau wie `grep(* > 10)`. Wir müssen das Ergebnis aber noch ausgeben. Also wird `say` jetzt als Funktion benutzt, nicht als Methode.

1. Der Aufruf von `map` muss seine Klammern behalten. Nehmen wir an, du schreibst stattdessen `.map: * * 2`. Dann würde der Doppelpunkt auch `.grep(* > 10)` als Argument von `map` nehmen. Also würde die Kette brechen.

{% include nav.html %}
