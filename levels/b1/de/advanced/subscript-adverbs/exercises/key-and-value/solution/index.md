---
title: 'Solution: Schlüssel und Wert'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

## Code

```raku
my %h = x => 10, y => 20;
say %h<x>:kv;
```

🦋 Du findest den Quellcode in der Datei [key-and-value.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/subscript-adverbs/key-and-value.raku).

## Ausgabe

```
(x 10)
```

## Kommentare

1. Das Adverb `:kv` liefert dir den Schlüssel und den Wert zusammen in einer Liste.

1. Bei einem Hash ist der Schlüssel der Name, den du beim Indizieren verwendest. Also liefert `%h<x>:kv` die Liste `(x 10)`.

{% include nav.html %}
