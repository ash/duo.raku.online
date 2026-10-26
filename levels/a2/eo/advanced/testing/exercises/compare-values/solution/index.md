---
title: 'Solvo: Kompari valorojn'
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
use Test;

is 'a'.uc, 'A', 'uppercase';

done-testing;
```

🦋 Vi povas trovi la fontkodon en la dosiero [compare-values.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/testing/compare-values.raku).

## Eligo

```
ok 1 - uppercase
1..1
```

## Komentoj

1. `is` komparas du valorojn. `'a'.uc` estas la valoro, kiun vi ricevas. `'A'` estas la valoro, kiun vi atendas.

1. La valoroj estas samaj, do la testo sukcesas. Se la testo malsukcesas, `is` presas ambaŭ valorojn.

{% include nav.html %}
