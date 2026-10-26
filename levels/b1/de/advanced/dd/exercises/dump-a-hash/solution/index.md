---
title: 'Solution: Einen Hash dumpen'
---

{% include menu.html %}

Hier ist eine mögliche Lösung für die Aufgabe.

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

1. `dd` gibt den Hash in einer codeähnlichen Form aus. Jedes Paar wird als `:key(value)` gezeigt.

1. Die Schlüssel werden in sortierter Reihenfolge ausgegeben, also kommt `alpha` vor `beta`. Das passiert, obwohl `beta` zuerst geschrieben wurde.

{% include nav.html %}
