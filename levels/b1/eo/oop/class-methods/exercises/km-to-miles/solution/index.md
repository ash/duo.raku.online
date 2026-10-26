---
title: 'Solvo: De kilometroj al mejloj'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
class Converter {
    method km-to-miles($km) {
        $km * 0.621;
    }
}

say Converter.km-to-miles(10);
```

🦋 Vi povas trovi la fontkodon en la dosiero [km-to-miles.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/class-methods/km-to-miles.raku).

## Eligo

```
6.21
```

## Komentoj

1. La konvertado ne dependas de iu aparta objekto. Do ĝi estas klasmetodo, kaj la programo vokas ĝin rekte sur `Converter`.

1. Klasmetodo tamen povas preni parametrojn. Ĉi tie ĝi ricevas la nombron da kilometroj kaj redonas la mejlojn.

{% include nav.html %}
