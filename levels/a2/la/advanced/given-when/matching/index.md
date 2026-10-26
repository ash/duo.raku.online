---
title: Concordatio intervallarum, typorum, et condicionum
translations_gpt:
---

{% include menu.html %}

Copia `when` plus facit quam aequalitatem probare. Facit _congruationem intelligentem_. Topicum cum valore quem das comparat. Itaque cum intervallis, typis et condicionibus congruere potes. Non solum singulis valoribus uteris.

## Intervalla

Intervallum congruit cum topicum intra id est. Itaque `given`/`when` numeros in classes bene dividit:

```raku
my $score = 75;

given $score {
    when 90..100 { say 'A' }
    when 80..89  { say 'B' }
    when 70..79  { say 'C' }
    default      { say 'F' }
}
```

Valor `75` in intervallo `70..79` est. Itaque programma imprimit:

```
C
```

## Typi

Typus congruit cum topicum hunc typum habet. Itaque actionem secundum genus valoris eligere potes:

```raku
my $value = 'Raku';

given $value {
    when Int { say 'an integer' }
    when Str { say 'a string' }
}
```

`$value` chordam habet. Itaque programma imprimit:

```
a string
```

## Condiciones

Etiam comparationem directe scribere potes. Intra `when` topicum est `$_`. Itaque condicio sicut `$_ < 0` congruit cum vera est:

```raku
my $n = -7;

given $n {
    when $_ < 0 { say 'negative' }
    when 0      { say 'zero' }
    default     { say 'positive' }
}
```

Hic prima `when` congruit. Programma imprimit:

```
negative
```

{% include nav.html %}
