---
title: 'Solutio: Par, impar, vel nullum'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
my $n = 12;

given $n {
    when 0      { say 'zero' }
    when $_ %% 2 { say 'even' }
    default     { say 'odd' }
}
```

🦋 Inveni codicem fontem in archivo [sign-of-a-number.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/given-when/sign-of-a-number.raku).

## Exitus

```
even
```

## Commentarii

1. `when 0` solum cum valore zero congruit. Primum venit quia zerum etiam par est, et id separatim referre volumus.

1. `when $_ %% 2` est condicio, ubi `$_` est topicum a `given` positum. Operator `%%` probat num topicum aequaliter per duo dividatur. Valor `12` non est zerum, sed per duo dividitur, itaque programma `even` imprimit.

1. `default` omne quod restat tegit. Hi sunt numeri qui neque zerum neque pares sunt, id est impares.

{% include nav.html %}
