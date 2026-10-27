---
title: 'Oplossing: Schrijven met een handle'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

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

1. `open` met de vlag `:w` geeft een handle om te schrijven. De handle blijft open tijdens de hele lus. Dus voegt elke `$fh.say` nog een regel toe. Hier is een handle beter dan `spurt`. `spurt` opent het bestand elke keer opnieuw.

1. `close` schrijft alle gegevens naar de schijf. Dus leest de `slurp` daarna alle drie de regels terug.

{% include nav.html %}
