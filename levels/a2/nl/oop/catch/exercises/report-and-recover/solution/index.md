---
title: 'Oplossing: Melden en herstellen'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

## Code

```raku
my $timeout = 30;

{
    die 'config missing';
    $timeout = 60;

    CATCH {
        default {
            say "warning: {.message}; keeping default";
        }
    }
}

say "timeout is $timeout seconds";
```

🦋 Je kunt de broncode vinden in het bestand [report-and-recover.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/catch/report-and-recover.raku).

## Uitvoer

```
warning: config missing; keeping default
timeout is 30 seconds
```

## Opmerkingen

1. De `die` werpt een exceptie. Dan slaat Raku de rest van het blok over. Dus draait de regel `$timeout = 60` nooit. `$timeout` houdt zijn standaardwaarde, `30`.

1. De `CATCH` handelt de exceptie af. Hij drukt een waarschuwing af. Dus stopt het programma niet. Het gaat verder met de standaardwaarde. Dat bedoelen we met *herstellen* na een fout. Je noteert het probleem. Je gebruikt in plaats daarvan iets veiligs. Daarna ga je verder.

{% include nav.html %}
