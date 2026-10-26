---
title: 'Solution: Alle Argumente summieren'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Der Slurpy-Parameter `*@nums` sammelt alle Argumente im Array `@nums`. Es ist egal, wie viele es sind.

1. Dann addiert der Reduktions-Meta-Operator `[+]` sie alle und ergibt `15`.

{% include nav.html %}
