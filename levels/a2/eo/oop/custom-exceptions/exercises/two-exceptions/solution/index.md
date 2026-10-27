---
title: 'Solvo: Du esceptotipoj'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. En la unua rondo, la buklo ĵetas `TooSmall`. En la dua rondo, ĝi ĵetas `TooBig`. Ĉiu estas ĵetata ene de sia propra bloko. Ĉiu bloko havas sian propran `CATCH`.

1. La fazero `CATCH` havas branĉon `when` por ĉiu esceptotipo. En ĉiu rondo, nur unu branĉo ruliĝas. Tio estas la branĉo por la tipo de la ĵetita escepto. Do la unua rondo presas `small`, kaj la dua presas `big`. Ĉiu branĉo `when` estas traktilo por unu tipo. Do unu aro da traktiloj povas trakti ĉiun specon de eraro malsame.

{% include nav.html %}
