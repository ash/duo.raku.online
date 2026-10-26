---
title: 'Solution: Alle Argumente summieren'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
sub total(*@nums) {
    [+] @nums
}

say total(3, 5, 7);
```

🦋 Den Quellcode finden Sie in der Datei [sum-all-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/signatures/sum-all-arguments.raku).

## Ausgabe

```
15
```

## Kommentare

1. Der Slurpy-Parameter `*@nums` sammelt alle Argumente im Array `@nums`. Die Zahl der Argumente ist egal.

1. Dann addiert der Reduktions-Meta-Operator `[+]` sie alle. Das Ergebnis ist `15`.

{% include nav.html %}
