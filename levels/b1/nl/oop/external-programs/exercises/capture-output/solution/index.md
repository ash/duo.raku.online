---
title: 'Oplossing: Vang de uitvoer op'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. `:out` stuurt de uitvoer van het programma naar de `Proc` in plaats van naar het scherm. `.out.slurp(:close)` leest alles terug. `.trim` haalt de newline weg die `echo` aan het eind toevoegt.

1. Nu is de uitvoer een gewone string in ons programma. We behandelen die als alle andere gegevens. `.words.elems` splitst de string op witruimte en telt de stukken, wat `3` oplevert. Daar draait het om bij het opvangen van uitvoer. Het externe programma wordt een bouwsteen, en we verwerken zijn resultaat verder.

{% include nav.html %}
