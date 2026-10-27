---
title: 'Solvo: Traktu kaj daŭrigu'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
for <ok bad ok> -> $item {
    {
        die 'boom' if $item eq 'bad';
        say "processed $item";

        CATCH {
            default {
                say "skipped ($item): {.message}";
            }
        }
    }
}
```

🦋 Vi povas trovi la fontkodon en la dosiero [handle-and-continue.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/catch/handle-and-continue.raku).

## Eligo

```
processed ok
skipped (bad): boom
processed ok
```

## Komentoj

1. La fazero `CATCH` estas ene de la bloko por unu ero. Do ĝi traktas `die` nur por ĉi tiu ero. La escepto estas traktata tie. Do ĝi neniam eliras el la bloko. Ĝi ne povas haltigi la tutan buklon.

1. Ĉi tio estas ofta kazo por `CATCH`, ne por `try`. Unu rondo de la buklo malsukcesas. La programo traktas la eraron ĝuste tie. Poste la buklo iras al la sekva ero. La meza ero malsukcesas. Sed la programo ankoraŭ traktas la du erojn `ok`.

{% include nav.html %}
