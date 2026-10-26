---
title: 'Solution: Summe mit dem `&`-Sigil'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

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

1. Der Pointy Block hat zwei Parameter: `-> $a, $b`. Also nimmt die anonyme Subroutine zwei Argumente.

1. Die Variable hat das `&`-Sigil. Also können Sie sie als `add(2, 3)` aufrufen. Das funktioniert wie bei einer normalen Subroutine mit Namen. Im Aufruf schreiben Sie kein Sigil. Das Ergebnis ist `5`.

{% include nav.html %}
