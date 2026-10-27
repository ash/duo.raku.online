---
title: 'Solvo: Traktu kaj daŭrigu'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

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

1. La fazero `CATCH` estas ene de la bloko, kiu ruliĝas por ĉiu ero. Do ĝi traktas `die` nur por tiu unu ero. La escepto estas traktata tie, do ĝi neniam eskapas por haltigi la tutan buklon.

1. Ĉi tio estas tipa kazo, kie `CATCH` estas pli bona ol `try`. Misfunkcio en unu rondo de la buklo estas traktata ĝuste tie, kie ĝi okazas. Poste la buklo iras al la sekva ero. La meza ero malsukcesas, sed la du eroj `ok` ankoraŭ estas prilaborataj.

{% include nav.html %}
