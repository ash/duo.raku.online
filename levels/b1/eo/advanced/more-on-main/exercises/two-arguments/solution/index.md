---
title: 'Solvo: Aldoni du argumentojn'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
sub MAIN($a, $b) {
    say $a + $b;
}
```

🦋 Vi povas trovi la fontkodon en la dosiero [two-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/more-on-main/two-arguments.raku).

## Eligo

```console
$ raku two-arguments.raku 2 3
5
```

## Komentoj

1. La du poziciaj parametroj ricevas la du vortojn el la komandlinio.

1. Komandliniaj argumentoj alvenas kiel ĉenoj, sed la operatoro `+` ŝanĝas ilin en nombrojn. Do `2` kaj `3` sumiĝas al `5`.

{% include nav.html %}
