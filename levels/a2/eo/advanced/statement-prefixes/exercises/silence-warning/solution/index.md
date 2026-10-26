---
title: 'Solvo: Silentigi averton'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
my $name;

my $greeting = quietly { "Hello, " ~ $name ~ "!" };
say $greeting;
```

🦋 Vi povas trovi la fontkodon en la dosiero [silence-warning.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/statement-prefixes/silence-warning.raku).

## Eligo

```
Hello, !
```

## Komentoj

1. Ĉi tie la nedefinita `$name` iras en la ĉenon. Kutime tio donas averton: "uzo de neinicialigita valoro". Sed la esprimo estas ene de `quietly`. Do la averto estas kaŝita. La programo presas nur la salutfrazon.

1. Kiel `do`, `quietly` redonas la valoron de sia bloko. Do la programo konservas la novan ĉenon en `$greeting`. La nomo mankas, do estas malplena spaco en la ĉeno.

1. `quietly` nur kaŝas la averton. La valoro ankoraŭ estas nedefinita. Eble vi volas *trakti* la mankantan valoron. Tiam donu defaŭltan valoron per la difinita-aŭ operatoro `//`. `$name // 'friend'` donas `'friend'`, kiam `$name` estas nedefinita. Do `"Hello, " ~ ($name // 'friend') ~ "!"` presas `Hello, friend!`. Tute ne estas averto.

{% include nav.html %}
