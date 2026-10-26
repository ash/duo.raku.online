---
title: 'Solvo: Fermilo en q-ĉeno'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. La `q`-formo kutime tenas la tekston sen ŝanĝo. La adverbo `:c` (fermo) ŝanĝas tion. Ĝi ŝaltas interpoladon de `{ … }`-kodo en la teksto. Ene de la krampoj, `$x` estas vera kodo. Do `{$x ** 2}` donas `100`.

1. La `$x` ekster la krampoj restas ekzakte sen ŝanĝo. Tio estas, ĉar la skalara adverbo `:s` *ne* estas ŝaltita. Jen la tuta ideo de unu adverbo por ĉiu funkcio. Vi ricevas kodon en la teksto. Sed vi ne samtempe ŝaltas interpoladon de `$`-variabloj.

1. Vi povas uzi plurajn adverbojn kune. Aldonu ankaŭ `:s`. Tiam Raku interpolas ankaŭ la unuan `$x`. Nun ambaŭ funkcioj estas ŝaltitaj:

```raku
my $x = 10;
say q:c:s/$x squared is {$x ** 2}/; # 10 squared is 100
```

{% include nav.html %}
