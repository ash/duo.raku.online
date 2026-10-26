---
title: La modulo Test
---

{% include menu.html %}

Por ricevi la ilojn por testado, skribu `use Test`. La plej simpla kontrolo estas `ok`. Ĝi sukcesas, kiam ĝia kondiĉo estas vera. Ĉiu kontrolo povas ankaŭ havi priskribon:

```raku
use Test;

ok 1 == 1, 'one equals one';
ok 2 > 1,  'two is greater';

done-testing;
```

Rulu ĉi tiun programon. Ĝi presas la rezulton en la norma formato por testoj. Ĉi tiu formato nomiĝas _TAP_:

```
ok 1 - one equals one
ok 2 - two is greater
1..2
```

Por ĉiu kontrolo, kiu sukcesas, vi vidas `ok` kun ĝia numero kaj priskribo. Kontrolo, kiu malsukcesas, montras `not ok`. La lasta linio, `1..2`, estas la _plano_. Ĝi diras, kiom da testoj ruliĝis. La alvoko de `done-testing` ĉe la fino presas ĉi tiun planon aŭtomate.

Foje vi atendas certan valoron. Tiam `is` estas pli klara ol `ok`. Se la testo malsukcesas, `is` montras du valorojn. Ĝi montras la valoron, kiun vi atendas, kaj la valoron, kiun vi ricevas:

```raku
use Test;

is 2 + 2, 4, 'addition works';

done-testing;
```

Tio presas `ok 1 - addition works`. Nun ni vidu, kiel `is` raportas malsukceson. Donu al `is` malĝustan atendatan valoron:

```raku
use Test;

is 2 + 2, 5, 'addition works';

done-testing;
```

Nun la kontrolo malsukcesas. La eligo montras ekzakte, kio estas malĝusta:

```
not ok 1 - addition works
# Failed test 'addition works'
# at test.raku line 3
# expected: '5'
#      got: '4'
1..1
# You failed 1 test of 1
```

La linio `not ok` montras la malsukceson. Sub ĝi, pliaj linioj klarigas la problemon. Ili montras la valoron, kiun vi atendas, kaj la valoron, kiun vi ricevas. Do, kiam vi bezonas certan valoron, `is` helpas pli ol nur `ok`.

Per `ok`, `is` kaj `done-testing` vi jam povas skribi utilan testodosieron. La sekva temo montras [la aliajn komparojn](/eo/advanced/testing/comparisons).

{% include nav.html %}
