---
title: 'Oplossing: Draai een commando'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. `run` start `echo` rechtstreeks en geeft elke string als afzonderlijk argument mee. Zonder `:out` gaat de uitvoer van het programma meteen naar het scherm.

1. Het argument bereikt `echo` precies zoals het geschreven is. `$HOME` wordt afgedrukt zoals het er staat, en niet vervangen door je thuismap. Dat komt doordat er geen shell is die het vervangt. Daarom is `run` de veilige standaardkeuze. Hetzelfde commando zou zich bij `shell` heel anders kunnen gedragen.

1. Om de thuismap echt af te drukken, laat je een shell de variabele vervangen. `shell 'echo home: $HOME'` drukt iets af als `home: /home/anna`. Houd ook aan de Raku-kant de enkele aanhalingstekens. Een `"$HOME"` met dubbele aanhalingstekens zou een probleem geven. Raku zou dan zelf proberen een variabele met de naam `$HOME` in de string te zetten. Dat zou gebeuren nog voordat `echo` draait.

{% include nav.html %}
