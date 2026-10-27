---
title: 'Oplossing: Geef een handle aan een functie'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. De handle die `open` teruggeeft, is gewoon een waarde in `$fh`. Dus kan hij een argument van `log-line` zijn, net als elke string of elk getal. In de subroutine schrijft `$fh.say` via diezelfde open handle.

1. De handle blijft open tijdens alle drie de aanroepen. Dus voegt elke `log-line` nog een regel toe aan het eind van hetzelfde bestand. Daarna slaat `close` alles op schijf op, en `slurp` leest de drie regels terug.

1. Daardoor zijn handles makkelijk te combineren. Een functie kan een handle aannemen en ernaar schrijven, of eruit lezen. Het maakt de functie niet uit naar welk bestand de handle wijst. De code die de functie aanroept, beslist dat wanneer ze het bestand opent.

{% include nav.html %}
