---
title: 'Solvo: De kilometroj al mejloj'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. La konvertado ne bezonas objekton. Do ĝi estas klasmetodo. La programo vokas ĝin rekte sur `Converter`.

1. Klasmetodo tamen povas havi parametrojn. Ĉi tie ĝi ricevas la nombron da kilometroj. Ĝi redonas la mejlojn.

{% include nav.html %}
