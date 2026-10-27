---
title: 'Oplossing: Afhandelen en doorgaan'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

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

🦋 Je kunt de broncode vinden in het bestand [handle-and-continue.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/catch/handle-and-continue.raku).

## Uitvoer

```
processed ok
skipped (bad): boom
processed ok
```

## Opmerkingen

1. De `CATCH`-faser zit binnen het blok dat voor elk item draait. Dus handelt hij een `die` alleen voor dat ene item af. De exceptie wordt daar afgehandeld, dus ontsnapt ze nooit om de hele lus te stoppen.

1. Dit is een typisch geval waarin `CATCH` beter is dan `try`. Een mislukking in één ronde van de lus wordt afgehandeld op de plek waar ze gebeurt. Daarna gaat de lus door naar het volgende item. Het middelste item mislukt, maar de twee `ok`-items worden toch verwerkt.

{% include nav.html %}
