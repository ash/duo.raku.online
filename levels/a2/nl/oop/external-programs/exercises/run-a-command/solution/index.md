---
title: 'Oplossing: Draai een commando'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

## Code

```raku
run 'echo', 'home:', '$HOME';
```

🦋 Je kunt de broncode vinden in het bestand [run-a-command.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/external-programs/run-a-command.raku).

## Uitvoer

```
home: $HOME
```

## Opmerkingen

1. `run` start `echo` direct. De functie geeft elke string als los argument mee. Er is geen `:out`. Dus gaat de uitvoer van het programma meteen naar het scherm.

1. Het argument komt bij `echo` precies zoals je het hebt geschreven. Dus verschijnt `$HOME` zoals het er staat. Het wordt niet vervangen door je thuismap. Dat komt doordat er geen shell is. Een shell zou het wel vervangen. Daarom is `run` de veilige standaardkeuze. Met `shell` kan hetzelfde commando heel anders werken.

1. Wil je de thuismap echt afdrukken? Laat dan een shell de variabele vervangen. `shell 'echo home: $HOME'` drukt iets af als `home: /home/anna`. Houd in de Raku-code ook de enkele aanhalingstekens. Met dubbele aanhalingstekens, `"$HOME"`, is er een probleem. Raku probeert dan zelf zijn eigen variabele `$HOME` in de string te zetten. Dat gebeurt nog voordat `echo` draait.

{% include nav.html %}
