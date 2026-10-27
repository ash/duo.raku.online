---
title: 'Oplossing: Melden en herstellen'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. Als de `die` werpt, wordt de rest van het blok overgeslagen. Dus draait de regel `$timeout = 60` nooit, en houdt `$timeout` zijn standaardwaarde `30`.

1. De `CATCH` handelt de exceptie af en drukt een waarschuwing af. Dus stopt het programma niet, en het gaat verder met de standaardwaarde. Dat is precies wat *herstellen* na een fout betekent. Je noteert het probleem, valt terug op iets veiligs en gaat verder.

{% include nav.html %}
