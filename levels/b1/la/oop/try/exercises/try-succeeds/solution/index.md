---
title: 'Solutio: Cum nihil male cadit'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
my $r = try { 21 * 2 };

say $r.defined;
say $r;
```

🦋 Inveni codicem fontem in archivo [try-succeeds.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/try/try-succeeds.raku).

## Exitus

```
True
42
```

## Commentarii

1. Si clausula `try` sine exceptione currit, simpliciter valorem clausulae dat.

1. Itaque `$r` `42` continet, et `$r.defined` est `True`.

{% include nav.html %}
