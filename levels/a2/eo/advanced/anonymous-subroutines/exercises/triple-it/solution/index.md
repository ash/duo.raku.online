---
title: 'Solvo: Triobligi ĝin'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
my $factor = 3;
my $scale = -> $x { $x * $factor };

say $scale(7);
```

🦋 Vi povas trovi la fontkodon en la dosiero [triple-it.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/anonymous-subroutines/triple-it.raku).

## Eligo

```
21
```

## Komentoj

1. La pinta bloko havas nur unu parametron, `$x`. Sed ĝi ankaŭ uzas `$factor`. Ĉi tiu variablo venas el la kodo ĉirkaŭ la bloko. Bloko, kiu konservas tiajn variablojn, estas fermo.

1. `$factor` estas `3`, do `$scale(7)` donas `21`. Nun ŝanĝu `$factor`. Tiam la sama bloko uzas la novan valoron:

```raku
$factor = 5;
say $scale(7); # 35
```

La fermo konservas la *variablon* mem. Ĝi ne konservas la malnovan valoron de la variablo. Do la posta voko vidas la novan `$factor`. Ĝi redonas `35`.

{% include nav.html %}
