---
title: 'Solution: Summe mit dem `&`-Sigil'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

## Code

```raku
my &add = -> $a, $b {
    $a + $b;
};

say add(2, 3);
```

🦋 Den Quellcode finden Sie in der Datei [sum-with-sigil.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/anonymous-subroutines/sum-with-sigil.raku).

## Ausgabe

```
5
```

## Kommentare

1. Der Pointy Block hat zwei Parameter, `-> $a, $b`. Deshalb braucht die anonyme Subroutine zwei Argumente.

1. Die Variable ist mit dem `&`-Sigil deklariert. Also können Sie sie als `add(2, 3)` aufrufen, genau wie eine benannte Subroutine. Im Aufruf brauchen Sie kein Sigil. Das ergibt `5`.

{% include nav.html %}
