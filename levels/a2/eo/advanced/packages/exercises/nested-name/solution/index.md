---
title: 'Solvo: Nestita nomo'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. Ĉi tie, unu nomspaco estas en alia. Tio faras pli longan vojon `::`. La variablo kaj la subrutino estas du nivelojn profunde, en `Outer::Inner`.

1. La plena nomo `$Outer::Inner::base` atingas la variablon. `Outer::Inner::doubled()` atingas la subrutinon, tra la samaj du niveloj. La nomo de subrutino ne havas sigelon. Do ĝi ne havas `$` antaŭe, sed la variablo havas.

1. Ambaŭ el ili havas `our` antaŭe. Tio faras ilin videblaj ekster ilia modulo. Kun `my`, ili restus privataj en `Inner`.

{% include nav.html %}
