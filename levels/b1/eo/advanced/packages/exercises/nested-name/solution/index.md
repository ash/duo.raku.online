---
title: 'Solvo: Nestita nomo'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
module Outer {
    module Inner {
        our $base = 10;
        our sub doubled { $base * 2 }
    }
}

say $Outer::Inner::base;
say Outer::Inner::doubled();
```

🦋 Vi povas trovi la fontkodon en la dosiero [nested-name.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/packages/nested-name.raku).

## Eligo

```
10
20
```

## Komentoj

1. Kiam vi metas unu nomspacon en alian, vi ricevas pli longan vojon `::`. Kaj la variablo kaj la subrutino estas du nivelojn profunde, en `Outer::Inner`.

1. La plena nomo `$Outer::Inner::base` atingas la variablon. `Outer::Inner::doubled()` atingas la subrutinon tra la samaj du niveloj. La nomo de subrutino ne havas sigelon. Do, male al la variablo, ĝi ne havas `$` antaŭe.

1. Ambaŭ membroj estas deklaritaj per `our`. Tio faras ilin videblaj ekster ilia modulo. Kun `my`, ili restus privataj en `Inner`.

{% include nav.html %}
