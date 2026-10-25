---
title: Atribuado de valoro
---

{% include menu.html %}

Por meti novan valoron en skalaran ujon, uzu la operatoron `=`.

```raku
my $nomo;
$nomo = 'Anna';
```

Nun vi povas uzi la variablon, ekzemple, por presi ĝin:

```raku
say $nomo;
```

## Pluraj variabloj samtempe

Vi povas atribui valorojn al pluraj variabloj en la sama tempo. Ekzemple, jen kiel vi atribuas du skalarojn en unu deklaro:

```raku
my ($a, $b);
($a, $b) = 10, 20;
```

Rimarku, ke vi ne povas forlasi la parentezojn ĉe la maldekstra flanko. Sed vi povas aldoni ilin ankaŭ ĉe la dekstra flanko, por ke ambaŭ flankoj estu samaj:

```raku
($a, $b) = (10, 20);
```

{% include nav.html %}
