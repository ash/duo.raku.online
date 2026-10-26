---
title: Importare
translations_gpt:
---

{% include menu.html %}

Modulum plus quam uno modo in programma adducere potes. Tria enuntiata `use`, `need` et `require` differunt in eo _quando_ modulum onerent. Etiam differunt in eo _quid_ praesto faciant.

## `use`

Iam `use` vidisti. Modulum tempore compilationis onerat et nomina eius exportata importat. Itaque ea directe vocare potes:

```raku
use Greeting;
say hello('Anna'); # Hello, Anna!
```

## `need`

`need` quoque modulum tempore compilationis onerat. Sed nomina exportata _non_ importat. Variabiles eius `our` tamen per nomen moduli attingere potes:

```raku
need Greeting;
say $Greeting::version; # 1.0
```

Post `need Greeting`, Raku simplex `hello(...)` non agnosceret, quia nihil importatum est. Sola nomina qualificata, ut `$Greeting::version`, praesto sunt.

## `require`

`require` modulum _tempore exsecutionis_ potius quam tempore compilationis onerat. Hoc utile est cum solum tempore exsecutionis scis an modulum requiras. Exempli gratia, nomen eius ab introitu utentis venire potest.

Quia modulus tempore exsecutionis oneratur, nihil sponte importatur. Ut symbola importes, ea in uncis angularibus post nomen moduli enumera. Tum ea directe vocare potes:

```raku
require Greeting <&hello>;
say hello('Anna'); # Hello, Anna!
```

In codice cotidiano `use` est quod vis. `need` et `require` adsunt pro casibus rarioribus.

{% include nav.html %}
