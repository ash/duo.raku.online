---
title: 'Solution: Opgemaakte tekst'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
=begin pod

=head1 Greeting

Hello, B<world>!

=end pod
```

🦋 Je kunt de broncode vinden in het bestand [formatted-text.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/pod/formatted-text.raku).

## Uitvoer

Uitvoeren met `raku --doc`:

```
Greeting

Hello, world!
```

## Opmerkingen

1. `B<world>` markeert het woord als vet. Als het als platte tekst wordt weergegeven, ziet het eruit als gewone tekst. Maar rijkere formaten tonen het vetgedrukt.

1. `raku --doc` rendert de Pod, maar voert geen code van het programma uit.

1. Om de vette tekst echt te *zien*, render je de Pod naar een formaat met stijlen. Installeer een formatter, zoals `Pod::To::HTML`, met `zef install Pod::To::HTML`. Voer daarna `raku --doc=HTML formatted-text.raku` uit. Nu komt het woord in een HTML-element `<b>` te staan. Platte tekstuitvoer van `--doc` is anders. Die kan geen vet tonen als ze naar een bestand of een pipe gaat.

{% include nav.html %}
