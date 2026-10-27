---
title: 'Solutio: Valor subsidiarius'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
sub get($x) {
    fail 'bad' if $x == 0;
    return $x;
}

say get(5) // 'default';
say get(0) // 'default';
```

🦋 Inveni codicem fontem in archivo [fallback-value.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/failures/fallback-value.raku).

## Exitus

```
5
default
```

## Commentarii

1. `get(5)` `5` more solito reddit, itaque `//` illud servat.

1. `get(0)` reddit `Failure` indefinitum, itaque `//` valorem subsidiarium `'default'` adhibet. Quia `Failure` indefinitum est, `//` id tacite tractat, sine exceptione iacta.

{% include nav.html %}
