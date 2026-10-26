---
title: Concordatio intervallarum, typorum, et condicionum
translations_gpt:
---

{% include menu.html %}

Copia `when` non solum probat num duo valores aequales sint. Facit _congruationem intelligentem_ inter topicum et valorem quem ei das. Itaque cum intervallis, typis et condicionibus congruere potes, non solum cum singulis valoribus.

## Intervalla

Intervallum congruit cum topicum intra id est. Ideo `given`/`when` electio naturalis est ad numeros in classes dividendos:

```raku
my $score = 75;

given $score {
    when 90..100 { say 'A' }
    when 80..89  { say 'B' }
    when 70..79  { say 'C' }
    default      { say 'F' }
}
```

Valor `75` in intervallo `70..79` est, itaque programma imprimit:

```
C
```

## Typi

Typus congruit cum topicum illius typi est. Itaque programma ramum eligere potest secundum genus valoris quem habet:

```raku
my $value = 'Raku';

given $value {
    when Int { say 'an integer' }
    when Str { say 'a string' }
}
```

`$value` chordam continet, itaque programma imprimit:

```
a string
```

## Condiciones

Comparationem quoque directe scribere potes. Intra `when` topico ut `$_` uti potes. Itaque condicio sicut `$_ < 0` congruit cum vera est:

```raku
my $n = -7;

given $n {
    when $_ < 0 { say 'negative' }
    when 0      { say 'zero' }
    default     { say 'positive' }
}
```

Hic prima `when` congruit, et programma imprimit:

```
negative
```

{% include nav.html %}
