---
title: 'Solvo: Plani du kontrolojn'
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
use Test;

plan 2;

my @sorted = (3, 1, 2).sort;
is-deeply @sorted, [1, 2, 3], 'sorted';

is 10 % 3, 1, 'remainder';
```

🦋 Vi povas trovi la fontkodon en la dosiero [test-a-list.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/testing/test-a-list.raku).

## Eligo

```
1..2
ok 1 - sorted
ok 2 - remainder
```

## Komentoj

1. `plan 2` donas la nombron antaŭ ol iu testo ruliĝas. Do la linio `1..2` venas unue. Eble la dosiero rulas alian nombron da kontroloj. Tiam la tuta aro de testoj malsukcesas. `done-testing` ne povas protekti vin tiel.

1. `is-deeply` kontrolas, ke la du listoj estas ekzakte egalaj, kaj ankaŭ iliaj tipoj. Ordigo de `3, 1, 2` donas `1, 2, 3`. Tio kongruas.

1. `is` kontrolas, ke du valoroj estas egalaj. Se ili ne estas egalaj, ĝi montras ambaŭ valorojn. Ĉi tie `10 % 3` estas `1`. Tio estas la atendata valoro. Do ankaŭ la dua testo sukcesas.

{% include nav.html %}
