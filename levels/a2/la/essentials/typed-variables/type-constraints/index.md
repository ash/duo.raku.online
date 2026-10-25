---
title: Typus limitationes
---

{% include menu.html %}

Raku systema generum graduale sic dictum habet. Hoc significat: genera solum ubi vis adhibere potes. Plerumque genus variabilis dare non necesse est. Sed interdum genus variabilis fortasse limitare vis. Tum genus sic da:

```raku
my Int $var = 42;
```

Nunc alium valorem integrum `$var` assignare potes. Sed stringam in eam ponere non potes. Ne numerum quidem fluitantem in eam ponere potes. Si temptas, exceptionem accipis:

```raku
my Int $var = 42;
$var = '314E-2';
```

Programma hunc errorem dat:

    Generis verificatio defecit in adsignatione ad $var; expectatum Int sed obtentum Str ("314E-2")
      in block <unit> at t.raku line 2

{% include nav.html %}
