---
title: 'Solvo: Fermilo en q-ĉeno'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
my $x = 10;
say q:c/$x squared is {$x ** 2}/;
```

🦋 Vi povas trovi la fontkodon en la dosiero [closure-quote.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/quoting/closure-quote.raku).

## Eligo

```
$x squared is 100
```

## Komentoj

1. La `q`-formo kutime tenas la tutan tekston sen ŝanĝo. La adverbo `:c` (fermo) ŝaltas interpoladon de `{ … }`-kodo en ĝi. Ene de la krampoj, `$x` estas vera kodo, do `{$x ** 2}` donas `100`.

1. La `$x` ekster la krampoj restas ĝuste kiel skribita. Tio estas, ĉar la skalara adverbo `:s` *ne* estas ŝaltita. Ĝuste por tio ekzistas aparta adverbo por ĉiu funkcio. Vi ricevas kodon en la ĉeno, sen ankaŭ ŝalti `$`-interpoladon.

1. Vi povas kombini adverbojn. Se vi aldonas ankaŭ `:s`, la unua `$x` ankaŭ estas interpolita. Nun ambaŭ funkcioj estas ŝaltitaj samtempe:

```raku
my $x = 10;
say q:c:s/$x squared is {$x ** 2}/; # 10 squared is 100
```

{% include nav.html %}
