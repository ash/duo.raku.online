---
title: 'Solutio: Par, impar, vel nullum'
translations_gpt:
---

{% include menu.html %}

Hoc modo munus solvere potes.

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

1. `when 0` solum cum uno valore congruit, cum zero. Primum venit. Zerum etiam par est, sed id separatim ostendere volumus.

1. `when $_ %% 2` est condicio. Hic `$_` est topicum ex `given`. Operator `%%` probat num per duo sine reliquo dividatur. Valor `12` non est zerum. Sed per duo dividitur. Itaque programma `even` imprimit.

1. `default` est pro omnibus ceteris numeris. Nec zerum nec pares sunt. Itaque sunt numeri impares.

{% include nav.html %}
