---
title: 'Solutio: Triplicatio ut methodus'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

## Codex

```raku
class Number {
    has $.n;

    method triple {
        $.n * 3;
    }
}

say Number.new(n => 7).triple;
```

🦋 Inveni codicem fontem in archivo [triple-method.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/subs-vs-methods/triple-method.raku).

## Exitus

```
21
```

## Commentarii

1. Hic `triple` est methodus. Ad obiectum pertinet. Cum proprio obiecti `n` operatur. Nihil ei tradis.

1. Id cum subprogrammate compara. Ibi data ut argumentum veniunt. Hic data in obiecto sunt. Utrumque programma `21` dat.

{% include nav.html %}
