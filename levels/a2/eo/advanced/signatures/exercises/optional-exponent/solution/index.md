---
title: 'Solvo: Nedeviga eksponento'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
sub power($base, $exp?) {
    $base ** ($exp // 2)
}

say power(5);
say power(5, 3);
```

🦋 Vi povas trovi la fontkodon en la dosiero [optional-exponent.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/signatures/optional-exponent.raku).

## Eligo

```
25
125
```

## Komentoj

1. La `?` post `$exp` faras ĝin nedeviga. Do vi povas voki `power` kun nur la bazo.

1. Se vi ellasas `$exp`, ĝi estas nedifinita. Tiam `//` donas la valoron `2`. Do `power(5)` kvadratigas la bazon kaj ricevas `25`. Nun rigardu `power(5, 3)`. Ĉi tie la eksponento ĉeestas. Do la kodo uzas ĝin kaj ricevas `125`.

{% include nav.html %}
