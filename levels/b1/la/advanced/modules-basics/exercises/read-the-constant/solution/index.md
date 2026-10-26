---
title: 'Solutio: Constantem legere'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

Programma, `read-pi.raku`:

```raku
need Circle;

say $Circle::pi;
```

🦋 Utrumque archivum fontem in directoria [exercises/advanced/modules-basics/read-the-constant](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/read-the-constant) invenies.

## Exitus

```console
$ raku -I. read-pi.raku
3.14
```

## Commentarii

1. `need Circle` modulum onerat, sed nulla nomina importat. Itaque Raku `$pi` solum non agnosceret.

1. Programma variabilem `our` per nomen moduli attingit, ut `$Circle::pi`.

{% include nav.html %}
