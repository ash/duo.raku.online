---
title: 'Solution: Einen Hash indizieren'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
my %h = a => 1;
say %h<a>;
```

🦋 Den Quellcode finden Sie in der Datei [subscript-a-hash.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/operator-types/subscript-a-hash.raku).

## Ausgabe

```
1
```

## Kommentare

1. Der Subscript `< >` ist ein Postcircumfix-Operator. Er kommt nach einem Term, hier nach dem Hash. Und er steht um den Schlüssel herum.

1. `%h<a>` gibt den Wert für den Schlüssel `a` zurück. Dieser Wert ist `1`.

{% include nav.html %}
