---
title: 'Solvo: Plani du kontrolojn'
---

{% include menu.html %}

Jen unu ebla solvo.

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

1. `plan 2` donas la nombron antaŭ ol iu testo ruliĝas, do la linio `1..2` venas unue. Se la dosiero poste rulus alian nombron da kontroloj, la testoserio malsukcesus. `done-testing` ne povas doni al vi ĉi tiun protekton.

1. `is-deeply` kontrolas, ke la du listoj estas ekzakte egalaj, kune kun iliaj tipoj. Ordigo de `3, 1, 2` donas `1, 2, 3`, kio kongruas.

1. `is` kontrolas du valorojn pri simpla egaleco. Se la testo malsukcesas, ĝi montras ambaŭ valorojn. Ĉi tie `10 % 3` estas `1`, kio estas la atendata valoro. Do ankaŭ la dua testo sukcesas.

{% include nav.html %}
