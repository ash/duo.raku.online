---
title: 'Oplossing: Bouw een logbestand op'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. De eerste `spurt` maakt een nieuw bestand aan dat de regel `start` bevat.

1. Elke `spurt` in de lus gebruikt `:append`. Dus zet hij zijn regel achter de bestaande inhoud en vervangt hij het bestand niet. Precies zo groeit een logbestand. Elke ronde van de lus voegt nog een regel toe aan het eind. Hetzelfde geldt voor elke keer dat een programma draait.

1. Zonder `:append` zou elke ronde over het bestand heen schrijven. Alleen de laatste regel zou overblijven.

{% include nav.html %}
