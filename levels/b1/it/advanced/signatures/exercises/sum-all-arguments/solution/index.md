---
title: 'Solution: Somma di tutti gli argomenti'
---

{% include menu.html %}

Ecco una possibile soluzione.

## Codice

```raku
sub total(*@nums) {
    [+] @nums
}

say total(3, 5, 7);
```

🦋 Puoi trovare il codice sorgente nel file [sum-all-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/signatures/sum-all-arguments.raku).

## Output

```
15
```

## Commenti

1. Il parametro slurpy `*@nums` raccoglie tutti gli argomenti nell'array `@nums`. Non importa quanti sono.

1. Poi il meta-operatore di riduzione `[+]` li somma tutti e dà `15`.

{% include nav.html %}
