---
title: 'Solution: De waarde van een do-blok'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
my $label = do if 7 > 5 { 'big' } else { 'small' };

say $label;
```

🦋 Je kunt de broncode vinden in het bestand [do-block.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/statement-prefixes/do-block.raku).

## Uitvoer

```
big
```

## Opmerkingen

1. Een gewone `if` is een statement. Die heeft geen waarde die je kunt gebruiken. Het prefix `do` maakt van de hele `if`/`else` een expressie.

1. `7 > 5` is waar. De waarde van de expressie is dus `'big'`. Het programma wijst die toe aan `$label`. Dezelfde truc werkt met `do given` en `do for`.

1. Je moet de accolades `{ }` schrijven. In Raku heeft `if` altijd een blok nodig. Je kunt de takken dus niet korter maken, zoals `if 7 > 5 'big' else 'small'`. Deze code compileert niet. De fout is *Missing block*.

{% include nav.html %}
