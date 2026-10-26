---
title: 'Solution: Einen Hash indizieren'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Der Subscript `< >` ist ein Postcircumfix-Operator. Er folgt auf einen Term, den Hash, und steht um den Schlüssel herum.

1. `%h<a>` liefert den Wert unter dem Schlüssel `a`. Dieser Wert ist `1`.

{% include nav.html %}
