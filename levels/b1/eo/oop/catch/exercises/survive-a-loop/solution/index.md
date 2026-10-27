---
title: 'Solvo: Postvivu iteracion'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
for 1, 2, 3 -> $n {
    if $n == 2 {
        die "bad: $n";
    }
    say "ok: $n";

    CATCH {
        default {
            say "caught: " ~ .message;
        }
    }
}
```

🦋 Vi povas trovi la fontkodon en la dosiero [survive-a-loop.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/catch/survive-a-loop.raku).

## Eligo

```
ok: 1
caught: bad: 2
ok: 3
```

## Komentoj

1. La fazero `CATCH` traktas escepton, kiu estas ĵetata ene de la buklokorpo. Do la `die` en la dua rondo estas kaptata kaj ne finas la programon.

1. Post kiam la escepto estas traktita, la buklo simple daŭras kun la sekva valoro. Tial `ok: 3` tamen estas presata.

{% include nav.html %}
