---
title: 'Solution: Alleen gehele getallen'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
my Int $cars;

$cars = 250.7.Int;
say $cars;
say $cars.WHAT;
```

🦋 Je kunt de broncode vinden in het bestand [integers-only.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/scalar-containers/integers-only.raku).

## Uitvoer

```
250
(Int)
```

## Opmerkingen

1. De typebeperking `Int` in `my Int $cars` is een regel voor de container. De container accepteert geen waarden die geen geheel getal zijn. Je kunt `250.7` niet direct toewijzen. Deze waarde is een `Rat`. Raku geeft een fout tijdens het compileren, voordat het programma draait.

1. Het programma roept `.Int` aan op de rationele waarde `250.7`. Dat zet de waarde om naar het gehele getal `250`. De methode laat gewoon het deel na de punt weg. De nieuwe waarde past in de container. Let op: dit is niet hetzelfde als afronden.

1. De `.WHAT`-pseudomethode toont het type van de opgeslagen waarde. Dat is `Int`.

{% include nav.html %}
