---
title: 'Oplossing: Afhandelen en doorgaan'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

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

1. De `CATCH`-faser zit in het blok voor één item. Dus handelt hij een `die` alleen voor dit item af. De `CATCH` handelt de exceptie daar af. Dus komt de exceptie nooit uit het blok. Ze kan de hele lus niet stoppen.

1. Hiervoor gebruik je vaak `CATCH`, en niet `try`. Eén ronde van de lus mislukt. Het programma handelt de fout meteen daar af. Daarna gaat de lus door naar het volgende item. Het middelste item mislukt. Maar het programma verwerkt de twee `ok`-items toch.

{% include nav.html %}
