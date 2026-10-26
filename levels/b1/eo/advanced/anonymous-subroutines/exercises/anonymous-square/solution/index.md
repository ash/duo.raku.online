---
title: 'Solvo: Anonima kvadrato'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

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

1. La `sub ($x) { $x * $x }` ne havas nomon kaj neniam estas konservata en variablo. Ĝi iras rekte al `map` kiel ĝia argumento.

1. `map` uzas ĝin por ĉiu elemento de `1, 2, 3` kaj kvadratigas ilin, kio donas `(1 4 9)`. Transdoni anoniman subrutinon rekte tiel estas la plej ofta kialo por skribi tian.

{% include nav.html %}
