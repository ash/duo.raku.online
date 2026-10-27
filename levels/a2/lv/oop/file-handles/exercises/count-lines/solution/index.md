---
title: 'Risinājums: Saskaitiet rindas'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
spurt 'data.txt', "a\nb\nc\nd\n";

say 'data.txt'.IO.lines.elems;
```

🦋 Atrodiet programmu failā [count-lines.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/file-handles/count-lines.raku).

## Izvade

```
4
```

## Komentāri

1. `.IO.lines` atgriež faila rindas kā sarakstu.

1. `.elems` tās saskaita. Rezultāts ir `4`.

{% include nav.html %}
