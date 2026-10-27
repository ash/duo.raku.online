---
title: 'Oplossing: Zet iets voor de melding'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

## Code

```raku
{
    die 'timeout';

    CATCH {
        default {
            say 'Error: ' ~ .message;
        }
    }
}
```

🦋 Je kunt de broncode vinden in het bestand [error-prefix.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/exception-objects/error-prefix.raku).

## Uitvoer

```
Error: timeout
```

## Opmerkingen

1. Het exceptieobject heeft een methode `.message`. Die geeft de tekst die je aan `die` gaf.

1. We zetten `Error: ` voor deze tekst. Dat geeft de uiteindelijke regel. Het exceptieobject is gewoon een waarde. Dus kun je zijn melding gebruiken zoals je wilt.

{% include nav.html %}
