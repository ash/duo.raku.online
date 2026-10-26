---
title: 'Solvo: Silentigi averton'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

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

1. Meti la nedefinitan `$name` en la ĉenon normale kaŭzas averton pri "uzo de neinicialigita valoro". Kun `quietly` ĉirkaŭ la esprimo, la averto estas kaŝita, do nur la salutfrazo estas presata.

1. Kiel `do`, `quietly` redonas la valoron de sia bloko. Do la preta ĉeno estas konservata en `$greeting`. La mankanta nomo lasas malplenan interspacon en ĝi.

1. `quietly` nur kaŝas la averton, kaj la valoro ankoraŭ estas nedefinita. Se vi anstataŭe volas *trakti* la mankantan valoron, donu defaŭltan valoron. Uzu por tio la difinita-aŭ operatoron `//`. `$name // 'friend'` donas `'friend'`, kiam `$name` estas nedefinita. Do `"Hello, " ~ ($name // 'friend') ~ "!"` presas `Hello, friend!` tute sen averto.

{% include nav.html %}
