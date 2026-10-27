---
title: 'Oplossing: Bouw een logbestand op'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

## Code

```raku
spurt 'log.txt', "start\n";

for 1..3 -> $i {
    spurt 'log.txt', "entry $i\n", :append;
}

print slurp 'log.txt';
```

🦋 Je kunt de broncode vinden in het bestand [append-a-line.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/files/append-a-line.raku).

## Uitvoer

```
start
entry 1
entry 2
entry 3
```

## Opmerkingen

1. De eerste `spurt` maakt een nieuw bestand met de regel `start`.

1. Elke `spurt` in de lus heeft `:append`. Dus zet hij zijn regel achter de oude inhoud. Hij vervangt het bestand niet. Precies zo groeit een logbestand. Elke ronde van de lus zet er nog een regel aan het eind bij. Bij elke start kan een programma op dezelfde manier een regel toevoegen.

1. Zonder `:append` schrijft elke ronde over het bestand heen. Dan blijft alleen de laatste regel over.

{% include nav.html %}
