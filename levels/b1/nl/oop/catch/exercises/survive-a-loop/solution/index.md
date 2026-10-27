---
title: 'Oplossing: Een lus overleven'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

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

🦋 Je kunt de broncode vinden in het bestand [survive-a-loop.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/catch/survive-a-loop.raku).

## Uitvoer

```
ok: 1
caught: bad: 2
ok: 3
```

## Opmerkingen

1. De `CATCH`-faser handelt een exceptie af die binnen de body van de lus geworpen wordt. Dus wordt de `die` in de tweede ronde gevangen en beëindigt hij het programma niet.

1. Zodra de exceptie afgehandeld is, gaat de lus gewoon verder met de volgende waarde. Daarom wordt `ok: 3` toch afgedrukt.

{% include nav.html %}
