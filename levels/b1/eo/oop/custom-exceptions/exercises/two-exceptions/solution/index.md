---
title: 'Solvo: Du esceptotipoj'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
class TooSmall is Exception {
    method message { 'too small' }
}

class TooBig is Exception {
    method message { 'too big' }
}

for TooSmall, TooBig -> $type {
    {
        $type.new.throw;

        CATCH {
            when TooSmall { say 'small' }
            when TooBig   { say 'big' }
        }
    }
}
```

🦋 Vi povas trovi la fontkodon en la dosiero [two-exceptions.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/custom-exceptions/two-exceptions.raku).

## Eligo

```
small
big
```

## Komentoj

1. La buklo ĵetas `TooSmall` en la unua rondo kaj `TooBig` en la dua. Ĉiu estas ĵetata ene de sia propra bloko, kiu havas sian propran `CATCH`.

1. La fazero `CATCH` havas branĉon `when` por ĉiu esceptotipo. En ĉiu rondo, ruliĝas nur la branĉo, kiu kongruas kun la ĵetita tipo. Do la unua rondo presas `small`, kaj la dua presas `big`. Tiel unu aro da traktiloj reagas malsame al ĉiu speco de eraro.

{% include nav.html %}
