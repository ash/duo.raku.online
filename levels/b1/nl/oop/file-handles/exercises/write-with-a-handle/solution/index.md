---
title: 'Oplossing: Schrijven met een handle'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
my $fh = open 'out.txt', :w;
$fh.say($_) for 1..3;
$fh.close;

print slurp 'out.txt';
```

🦋 Je kunt de broncode vinden in het bestand [write-with-a-handle.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/file-handles/write-with-a-handle.raku).

## Uitvoer

```
1
2
3
```

## Opmerkingen

1. `open` met de vlag `:w` geeft een handle om te schrijven. De handle blijft open tijdens de hele lus, dus voegt elke `$fh.say` nog een regel toe. Hier is een handle beter dan `spurt`, die het bestand elke keer opnieuw zou openen.

1. `close` slaat de gegevens op schijf op. Dus leest de volgende `slurp` alle drie de regels terug.

{% include nav.html %}
