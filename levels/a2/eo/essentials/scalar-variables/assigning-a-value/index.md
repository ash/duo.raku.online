---
title: Atribuado de valoro
---

{% include menu.html %}

La operatoro `=` metas novan valoron en skalaran ujon.

```raku
my $nomo;
$nomo = 'Anna';
```

Nun vi povas uzi la variablon. Ekzemple, vi povas presi ĝin:

```raku
say $nomo;
```

## Du aŭ pli da variabloj samtempe

Vi povas atribui valorojn al pluraj variabloj samtempe. Ekzemple, ĉi tie unu deklaro atribuas valorojn al du skalaroj:

```raku
my ($a, $b);
($a, $b) = 10, 20;
```

Vi devas skribi la parentezojn ĉe la maldekstra flanko. Vi ne povas forlasi ilin. Ĉe la dekstra flanko, vi povas aldoni ilin ankaŭ. Tiam ambaŭ flankoj aspektas same:

```raku
($a, $b) = (10, 20);
```

{% include nav.html %}
