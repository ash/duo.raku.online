---
title: 'Solutio: Constantem legere'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

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

1. `need Circle` modulum onerat. Sed nulla nomina importat. Itaque Raku `$pi` solum non novit, sine nomine moduli.

1. Ad variabilem `our` per nomen moduli pervenis. Eam ut `$Circle::pi` scribis.

{% include nav.html %}
