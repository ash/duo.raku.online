---
title: 'Solvo: Deksesuma al dekuma'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
my $n = :16<1A>;

say $n;
say $n.base(16);
```

🦋 Vi povas trovi la fontkodon en la dosiero [hex-to-decimal.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/integers/hex-to-decimal.raku).

## Eligo

```
26
1A
```

## Komentoj

1. La radika formo `:16<1A>` legas `1A` kiel nombron en bazo 16. Ĝia valoro estas `1 × 16 + 10 = 26`. Nun la variablo `$n` tenas ĉi tiun valoron kiel normalan entjeron.

1. `$n.base(16)` ŝanĝas la entjeron reen al ĉeno en bazo 16. La rezulto denove estas `1A`. Do legi en bazo kaj presi en bazo estas kontraŭaj agoj.

{% include nav.html %}
