---
title: 'Solvo: Postvivu iteracion'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. La fazero `CATCH` traktas esceptojn el la korpo de la buklo. La `die` en la dua rondo ĵetas tian escepton. `CATCH` kaptas ĝin. Do la eraro ne finas la programon.

1. `CATCH` traktas la escepton. Poste la buklo simple daŭras kun la sekva valoro. Tial la programo tamen presas `ok: 3`.

{% include nav.html %}
