---
title: 'Oplossing: Twee exceptietypen'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. De lus werpt een `TooSmall` in de eerste ronde en een `TooBig` in de tweede. Elke exceptie wordt binnen een eigen blok geworpen, dat een eigen `CATCH` heeft.

1. De `CATCH`-faser heeft een `when`-tak voor elk exceptietype. In elke ronde draait alleen de tak die op het geworpen type matcht. Dus drukt de eerste ronde `small` af, en de tweede `big`. Zo reageert één groep afhandelaars op elke soort fout anders.

{% include nav.html %}
