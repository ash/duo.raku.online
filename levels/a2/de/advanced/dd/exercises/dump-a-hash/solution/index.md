---
title: 'Solution: Einen Hash dumpen'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
my %h = beta => 2, alpha => 1;
dd %h;
```

🦋 Du findest den Quellcode in der Datei [dump-a-hash.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/dd/dump-a-hash.raku).

## Ausgabe

```
{:alpha(1), :beta(2)}
```

## Kommentare

1. `dd` gibt den Hash in einer Form wie Code aus. Jedes Paar sieht aus wie `:key(value)`.

1. Die Schlüssel kommen in sortierter Reihenfolge heraus. Also kommt `alpha` vor `beta`. Aber im Code steht `beta` zuerst.

{% include nav.html %}
