---
title: 'Solutio: Variabilem typificatam dump'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis huius operis.

## Codex

```raku
my Int $n = 42;
dd $n;
```

🦋 Inveni codicem fontem in archivo [dump-typed.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/dd/dump-typed.raku).

## Exitus

```
Int $n = 42
```

## Commentarii

1. Variabilis typum declaratum habet, itaque `dd` eum ante nomen imprimit: `Int $n = 42`.

1. Pro variabili sine typo `dd` solum `$n = 42` imprimeret, sine typo ante nomen.

{% include nav.html %}
