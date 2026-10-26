---
title: 'Solutio: Symbolum quaerere'
translations_gpt: true
---

{% include menu.html %}

Hoc modo munus solvere potes.

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

1. `Circle::` est stash moduli. Nomine ut clave uteris: `Circle::{'$pi'}`. Hoc valorem illius nominis dat. Clavis sigillum habere debet. Nomina enumerata quoque id habent.

1. Eundem valorem accipis ac cum nomine pleno `$Circle::pi`. Sed hic nomen est chorda simplex. Itaque programma nomen facere potest dum currit. Non debes id in codice fontis scribere.

{% include nav.html %}
