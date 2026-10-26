---
title: 'Solvo: Kompari valorojn'
---

{% include menu.html %}

Jen unu ebla solvo.

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

1. `is` komparas la realan valoron, `'a'.uc`, kun la atendata valoro, `'A'`.

1. Ili kongruas, do la testo sukcesas. Se la testo malsukcesus, `is` presus ambaŭ valorojn.

{% include nav.html %}
