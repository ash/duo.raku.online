---
title: 'Oplossing: Zet iets voor de melding'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. De methode `.message` van het exceptieobject geeft de tekst terug die aan `die` is meegegeven.

1. Als je de melding achter `Error: ` plakt, krijg je de uiteindelijke regel. Het exceptieobject is gewoon een waarde. Dus kun je zijn melding gebruiken zoals je wilt.

{% include nav.html %}
