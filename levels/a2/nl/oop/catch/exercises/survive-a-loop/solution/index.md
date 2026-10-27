---
title: 'Oplossing: Een lus overleven'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

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

1. De `CATCH`-faser handelt excepties uit de body van de lus af. De `die` in de tweede ronde werpt er een. `CATCH` vangt deze exceptie. Dus stopt de fout het programma niet.

1. `CATCH` handelt de exceptie af. Dan gaat de lus gewoon verder met de volgende waarde. Daarom drukt het programma toch nog `ok: 3` af.

{% include nav.html %}
