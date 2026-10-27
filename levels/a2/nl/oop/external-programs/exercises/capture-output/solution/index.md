---
title: 'Oplossing: Vang de uitvoer op'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

## Code

```raku
my $proc = run 'echo', 'hello world raku', :out;
my $output = $proc.out.slurp(:close).trim;
say $output.words.elems;
```

🦋 Je kunt de broncode vinden in het bestand [capture-output.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/external-programs/capture-output.raku).

## Uitvoer

```
3
```

## Opmerkingen

1. `:out` stuurt de uitvoer naar de `Proc`. Die gaat niet naar het scherm. `.out.slurp(:close)` leest alles terug. `.trim` haalt de newline aan het eind weg. `echo` voegt deze newline toe.

1. Nu is de uitvoer een gewone string in ons programma. We werken ermee zoals met alle andere gegevens. `.words.elems` splitst de string op de witruimte. Daarna telt het de stukken. Het resultaat is `3`. Daarom vangen we uitvoer op. Het externe programma wordt een deel van ons werk. We gebruiken zijn resultaat in de volgende stappen.

{% include nav.html %}
