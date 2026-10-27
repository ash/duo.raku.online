---
title: 'Solutio: Conatus an valor praedefinitus'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
my $r = try { die 'no' } // 'default';

say $r;
```

🦋 Inveni codicem fontem in archivo [try-or-default.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/try/try-or-default.raku).

## Exitus

```
default
```

## Commentarii

1. Clausula `try` deficiens valorem indefinitum dat.

1. Itaque operator defined-or `//` partem suam dexteram reddit, `'default'`. Hoc modo munde post defectum pergis, cum valore subsidiario in una linea.

{% include nav.html %}
