---
title: 'Solution: Onderzoek het resultaat van `prompt` — Getallen'
---

{% include menu.html %}

## Code

Hier is het volledige programma. Het lost het probleem op. Het print de ingevoerde waarde en het type ervan.

```raku
my $n = prompt 'Enter a number: ';
say $n;
say $n.WHAT;
```

🦋 Je kunt de broncode vinden in het bestand [prompt-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/prompt-numbers.raku).

## Testuitvoeringen

Voer het programma een paar keer uit. Voer getallen van verschillende typen in.

### Gehele getallen

Laten we eerst gehele getallen proberen. Probeer positieve en negatieve getallen.

```console
$ raku exercises/what/prompt-numbers.raku
Enter a number: 10
10
(IntStr)
```

Het type van het resultaat is `IntStr`. Dit type is ingebouwd in Raku. Het heeft de kenmerken van `Int` en van `Str`.

### Rationale getallen

Laten we nu een rationaal getal proberen. Onthoud: in Raku is een getal met een decimale punt een `Rat`. Het is geen drijvende-kommagetal.

```console
$ raku exercises/what/prompt-numbers.raku
Enter a number: 3.14
3.14
(RatStr)
```

Deze keer hebben de gegevens in `$n` het type `RatStr`. Dit is een gecombineerd type. Het is zowel `Rat` als `Str`.

### Drijvende-komma-getallen

Probeer als laatste een getal in wetenschappelijke notatie, met de letter `e`. Nu kun je de uitvoer waarschijnlijk raden.

```console
$ raku exercises/what/prompt-numbers.raku
Enter a number: 5e-14
5e-14
(NumStr)
```

Ja, de nieuwe waarde heeft het type `NumStr`.

{% include nav.html %}
