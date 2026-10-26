---
title: 'Solvo: Skribebla parametro'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
sub double($n is rw) {
    $n *= 2;
}

my $score = 21;
double($score);
say $score;
```

🦋 Vi povas trovi la fontkodon en la dosiero [writable-parameter.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/traits-pragmas/writable-parameter.raku).

## Eligo

```
42
```

## Komentoj

1. `is rw` ligas la parametron `$n` al la variablo `$score` de la vokanto. Do `$n *= 2` ene de `double` ŝanĝas `$score` mem. Tial la programo presas `42`.

1. Sen `is rw`, la parametro estas nur-legebla. Tiam `$n *= 2` donas eraron. Kun `is copy`, `double` ricevas sian propran kopion de la valoro. Ĝi povas ŝanĝi ĉi tiun kopion. Sed `$score` restas `21`.

{% include nav.html %}
