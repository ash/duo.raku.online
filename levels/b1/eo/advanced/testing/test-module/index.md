---
title: La modulo Test
---

{% include menu.html %}

Vi ŝargas la testadajn ilojn per `use Test`. La plej baza kontrolo estas `ok`, kiu sukcesas, kiam ĝia kondiĉo estas vera. Ĉiu kontrolo povas ankaŭ akcepti priskribon:

```raku
use Test;

ok 1 == 1, 'one equals one';
ok 2 > 1,  'two is greater';

done-testing;
```

Kiam vi rulas ĝin, ĝi presas jenon en la norma testformato nomata _TAP_:

```
ok 1 - one equals one
ok 2 - two is greater
1..2
```

Ĉiu kontrolo, kiu sukcesas, aperas kiel `ok` kun sia numero kaj priskribo. Malsukcesa kontrolo montrus `not ok`. La lasta linio, `1..2`, estas la _plano_, kiu diras, kiom da testoj ruliĝis. La alvoko `done-testing` ĉe la fino presas ĉi tiun planon aŭtomate.

Kiam vi atendas certan valoron, `is` estas pli klara ol `ok`. Se la testo malsukcesas, `is` montras kaj la atendatan valoron kaj la realan valoron:

```raku
use Test;

is 2 + 2, 4, 'addition works';

done-testing;
```

Tio presas `ok 1 - addition works`. Por vidi, kiel `is` raportas problemon, donu al ĝi malĝustan atendatan valoron:

```raku
use Test;

is 2 + 2, 5, 'addition works';

done-testing;
```

Nun la kontrolo malsukcesas, kaj la eligo klarigas ekzakte, kio misiris:

```
not ok 1 - addition works
# Failed test 'addition works'
# at test.raku line 3
# expected: '5'
#      got: '4'
1..1
# You failed 1 test of 1
```

La linio `not ok` markas la malsukceson. La linioj sub ĝi montras, kio estis atendata kaj kion la programo efektive ricevis. Do kiam certa valoro gravas, `is` estas pli helpa ol simpla `ok`.

`ok`, `is` kaj `done-testing` jam sufiĉas por utila testodosiero. La sekva temo aldonas [la aliajn komparojn](/eo/advanced/testing/comparisons).

{% include nav.html %}
