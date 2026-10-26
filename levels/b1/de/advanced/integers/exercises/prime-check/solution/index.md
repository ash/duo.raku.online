---
title: 'Solution: Primzahl oder nicht'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. `97` hat keine Teiler außer `1` und sich selbst, also gibt `is-prime` `True` zurück.

1. `91` sieht wie eine Primzahl aus, ist aber `7 × 13`, also gibt `is-prime` `False` zurück. Die Methode findet die Faktoren für dich. Genau dafür gibt es sie.

{% include nav.html %}
