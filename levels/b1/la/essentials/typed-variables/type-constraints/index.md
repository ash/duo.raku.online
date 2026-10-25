---
title: Typus limitationes
---

{% include menu.html %}

Raku systema generum graduale sic dictum habet. In plerisque casibus de genere variabilis curare non necesse est. Sed interdum variabilem ad unum genus restringere velis. Hoc facere potes genus dando, ut infra monstratur:

```raku
my Int $var = 42;
```

Nunc alium valorem integrum `$var` assignare potes. Sed si stringam in eam ponere temptas, exceptionem accipis. Idem accidit etiam cum numero fluitante:

```raku
my Int $var = 42;
$var = '314E-2';
```

Hoc programma errorem sequentem dat:

    Generis verificatio defecit in adsignatione ad $var; expectatum Int sed obtentum Str ("314E-2")
      in block <unit> at t.raku line 2

{% include nav.html %}
