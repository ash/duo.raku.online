---
title: 'Oplossing: Twee exceptietypen'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

## Code

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

🦋 Je kunt de broncode vinden in het bestand [two-exceptions.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/custom-exceptions/two-exceptions.raku).

## Uitvoer

```
small
big
```

## Opmerkingen

1. In de eerste ronde werpt de lus een `TooSmall`. In de tweede ronde werpt hij een `TooBig`. De lus werpt elke exceptie in een eigen blok. Elk blok heeft een eigen `CATCH`.

1. De `CATCH`-faser heeft een `when`-tak voor elk exceptietype. In elke ronde draait maar één tak. Dat is de tak voor het type van de geworpen exceptie. Dus drukt de eerste ronde `small` af, en de tweede `big`. Elke `when`-tak is een afhandelaar voor één type. Zo kan één groep afhandelaars elke soort fout anders behandelen.

{% include nav.html %}
