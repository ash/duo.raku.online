---
title: 'Solution: Potenzturm'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

## Code

```raku
say 2 ** 2 ** 3;
```

🦋 Den Quellcode finden Sie in der Datei [power-tower.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/operators-overview/power-tower.raku).

## Ausgabe

```
256
```

## Kommentare

1. Der Operator `**` ist rechtsassoziativ, also gruppiert sich der Ausdruck als `2 ** (2 ** 3)`.

1. Das ist `2 ** 8`, also `256`. Es ist nicht `(2 ** 2) ** 3`, was `64` ergeben würde.

{% include nav.html %}
