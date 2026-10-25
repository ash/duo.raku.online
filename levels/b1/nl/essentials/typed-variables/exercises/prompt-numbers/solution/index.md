---
title: 'Solution: Onderzoek het resultaat van `prompt` — Getallen'
---

{% include menu.html %}

## Code

Hier is het complete programma. Het lost het probleem op en print zowel de ingevoerde waarde als het type ervan.

```raku
my $n = prompt 'Enter a number: ';
say $n;
say $n.WHAT;
```

🦋 Je kunt de broncode vinden in het bestand [prompt-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/prompt-numbers.raku).

## Testuitvoeringen

Voer het programma meerdere keren uit en voer nummers van verschillende typen in.

### Gehele getallen

Laten we eerst gehele getallen proberen, zowel positieve als negatieve.

```console
$ raku exercises/what/prompt-numbers.raku
Enter a number: 10
10
(IntStr)
```

Het resultaat heeft het type `IntStr`. Dit ingebouwde type heeft de kenmerken van zowel `Int` als `Str`.

### Rationale getallen

Laten we nu een rationaal getal proberen. Onthoud dat je in Raku een `Rat`-getal krijgt als je een getal met een decimale punt schrijft. Het is geen drijvende-kommagetal.

```console
$ raku exercises/what/prompt-numbers.raku
Enter a number: 3.14
3.14
(RatStr)
```

Deze keer zegt het programma dat de gegevens in `$n` het type `RatStr` hebben. Dit is een gecombineerd type van zowel `Rat` als `Str`.

### Drijvende-komma-getallen

Probeer tot slot een getal in wetenschappelijke notatie. Nu kun je de uitvoer waarschijnlijk al raden.

```console
$ raku exercises/what/prompt-numbers.raku
Enter a number: 5e-14
5e-14
(NumStr)
```

Zoals verwacht is de nieuwe waarde van het type `NumStr`.

{% include nav.html %}
