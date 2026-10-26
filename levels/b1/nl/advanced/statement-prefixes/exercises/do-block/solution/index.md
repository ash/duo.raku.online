---
title: 'Solution: De waarde van een do-blok'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. Een gewone `if` is een statement, en je kunt de waarde ervan niet gebruiken. Het prefix `do` verandert de hele `if`/`else` in een expressie.

1. `7 > 5` is waar, dus de expressie geeft `'big'`, en deze waarde wordt toegewezen aan `$label`. Dezelfde truc werkt met `do given` en `do for`.

1. De accolades `{ }` zijn niet optioneel. In Raku neemt `if` altijd een blok. Je kunt de takken dus niet inkorten tot `if 7 > 5 'big' else 'small'`. Dat compileert niet en geeft de fout *Missing block*.

{% include nav.html %}
