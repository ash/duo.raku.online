---
title: 'Solutio: Symbolum quaerere'
translations_gpt: true
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

Programma, `lookup.raku`:

```raku
use Circle;

say Circle::{'$pi'};
```

🦋 Utrumque archivum fontem in directorio [exercises/advanced/module-introspection/lookup-symbol](https://github.com/ash/raku-course/tree/master/exercises/advanced/module-introspection/lookup-symbol) invenire potes.

## Outputum

```console
$ raku -I. lookup.raku
3.14
```

## Commentarii

1. `Circle::` est stash moduli. Nomen ut clavis, sicut `Circle::{'$pi'}`, valorem sub eo repositum dat. Clavis sigillum includere debet, sicut nomina enumerata.

1. Hoc eundem valorem dat ac qualificatum `$Circle::pi`. Sed hic nomen est chorda ordinaria. Itaque tempore executionis construi potest. In codice fontis scribi non debet.

{% include nav.html %}
