---
title: 'Solution: Primzahl oder nicht'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
say 97.is-prime;
say 91.is-prime;
```

🦋 Du findest den Quellcode in der Datei [prime-check.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/integers/prime-check.raku).

## Ausgabe

```
True
False
```

## Kommentare

1. Du kannst `97` nur durch `1` und durch sich selbst teilen. Deshalb gibt `is-prime` `True` zurück.

1. `91` sieht wie eine Primzahl aus, aber die Zahl ist `7 × 13`. Deshalb gibt `is-prime` `False` zurück. Die Methode findet die Faktoren für dich. Dafür gibt es diese Methode.

{% include nav.html %}
