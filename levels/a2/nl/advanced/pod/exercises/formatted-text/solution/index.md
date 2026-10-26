---
title: 'Solution: Opgemaakte tekst'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
=begin pod

=head1 Greeting

Hello, B<world>!

=end pod
```

🦋 Je kunt de broncode vinden in het bestand [formatted-text.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/pod/formatted-text.raku).

## Uitvoer

Voer het uit met `raku --doc`:

```
Greeting

Hello, world!
```

## Opmerkingen

1. `B<world>` maakt het woord vet. In platte tekst ziet het eruit als gewone tekst. Maar rijkere formaten tonen het vet.

1. `raku --doc` toont de Pod als tekst. Het voert geen code van het programma uit.

1. Wil je het vet echt *zien*? Zet de Pod dan om naar een formaat met stijlen. Installeer eerst een formatter-module, bijvoorbeeld `Pod::To::HTML`. Gebruik daarvoor `zef install Pod::To::HTML`. Voer dan `raku --doc=HTML formatted-text.raku` uit. Nu staat het woord in een HTML-element `<b>`. Platte tekst van `--doc` is anders. Die kan geen vet tonen in een bestand of een pipe.

{% include nav.html %}
