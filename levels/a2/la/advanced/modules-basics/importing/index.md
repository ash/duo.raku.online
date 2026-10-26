---
title: Importare
translations_gpt:
---

{% include menu.html %}

Modulum pluribus modis in programma adducere potes. Raku tria enuntiata ad hoc habet: `use`, `need` et `require`. Duobus modis differunt. Primus est _quando_ modulum onerant. Secundus est _quid_ programmati dant.

## `use`

Iam `use` nosti. Modulum tempore compilationis onerat, antequam programma currit. Etiam nomina exportata moduli importat. Itaque ea directe vocare potes:

```raku
use Greeting;
say hello('Anna'); # Hello, Anna!
```

## `need`

`need` quoque modulum tempore compilationis onerat. Sed nomina exportata _non_ importat. Tamen ad variabiles `our` moduli pervenire potes. Ad hoc nomine moduli utere:

```raku
need Greeting;
say $Greeting::version; # 1.0
```

Post `need Greeting`, simplex `hello(...)` non operatur. Nihil importatum est. Sola nomina plena praesto sunt, cum nomine moduli in eis. Exemplum est `$Greeting::version`.

## `require`

`require` modulum _tempore exsecutionis_ onerat, non tempore compilationis. Hoc in quibusdam casibus utile est. Interdum nescis an modulum requiras. Id solum scis cum programma currit. Exempli gratia, utens nomen moduli inscribere potest.

Programma modulum tempore exsecutionis onerat. Itaque nihil sponte importatur. Post nomen moduli, nomina quae vis scribe. Ea in uncis angularibus pone. Tum importantur. Itaque ea directe vocare potes:

```raku
require Greeting <&hello>;
say hello('Anna'); # Hello, Anna!
```

Plerumque `use` est recta electio. `need` et `require` sunt pro casibus rarioribus.

{% include nav.html %}
