---
title: 'Oplossing: Geef een handle aan een functie'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

## Code

```raku
sub log-line($fh, $message) {
    $fh.say($message);
}

my $fh = open 'log.txt', :w;
log-line($fh, 'started');
log-line($fh, 'working');
log-line($fh, 'done');
$fh.close;

print slurp 'log.txt';
```

🦋 Je kunt de broncode vinden in het bestand [pass-a-handle.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/file-handles/pass-a-handle.raku).

## Uitvoer

```
started
working
done
```

## Opmerkingen

1. `open` geeft een handle terug. Deze handle is gewoon een waarde in `$fh`. Dus kun je hem als argument aan `log-line` meegeven. Dat doe je ook met een string of een getal. In de subroutine schrijft `$fh.say` via dezelfde open handle.

1. De handle blijft open tijdens alle drie de aanroepen. Dus voegt elke `log-line` een regel toe aan het eind van hetzelfde bestand. Daarna schrijft `close` alles naar de schijf. `slurp` leest de drie regels terug.

1. Zo kun je handles makkelijk met functies combineren. Een functie kan een handle krijgen. Ze kan ernaar schrijven of eruit lezen. Het maakt de functie niet uit voor welk bestand de handle is. De code die de functie aanroept, kiest het bestand. Dat gebeurt als die code het bestand opent.

{% include nav.html %}
