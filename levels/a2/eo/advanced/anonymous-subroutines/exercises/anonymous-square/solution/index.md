---
title: 'Solvo: Anonima kvadrato'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
say (1, 2, 3).map(sub ($x) { $x * $x });
```

🦋 Vi povas trovi la fontkodon en la dosiero [anonymous-square.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/anonymous-subroutines/anonymous-square.raku).

## Eligo

```
(1 4 9)
```

## Komentoj

1. La subrutino `sub ($x) { $x * $x }` ne havas nomon. La programo neniam konservas ĝin en variablo. Ĝi donas ĝin rekte al `map` kiel argumenton.

1. `map` uzas ĝin por ĉiu elemento de `1, 2, 3`. Ĝi multiplikas ĉiun nombron per si mem. La rezulto estas `(1 4 9)`. Oni plej ofte skribas anoniman subrutinon por tio. Oni donas ĝin rekte, kiel ĉi tie.

{% include nav.html %}
