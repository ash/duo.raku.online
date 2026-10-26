---
title: 'Solvo: Unua testo'
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
use Test;

ok 'Raku'.chars == 4, 'Raku has four letters';

done-testing;
```

🦋 Vi povas trovi la fontkodon en la dosiero [a-first-test.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/testing/a-first-test.raku).

## Eligo

```
ok 1 - Raku has four letters
1..1
```

## Komentoj

1. La kondiĉo `'Raku'.chars == 4` estas vera. Do `ok` sukcesas.

1. `done-testing` presas la planlinion `1..1`. Ĝi diras, ke unu testo ruliĝis.

{% include nav.html %}
