---
title: 'Solutio: Attributa numera'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

## Codex

```raku
class Point {
    has $.x;
    has $.y;
}

say Point.^attributes.elems;
```

🦋 Inveni codicem fontem in archivo [count-attributes.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/object-introspection/count-attributes.raku).

## Exitus

```
2
```

## Commentarii

1. `.^attributes` indicem reddit. Attributa classis continet.

1. `.elems` ea numerat. Classis `Point` duo attributa habet. Itaque responsum est `2`.

{% include nav.html %}
