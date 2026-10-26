---
title: 'Solutio: Symbola enumerare'
translations_gpt: true
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

Programma, `list.raku`:

```raku
use Circle;

say Circle::.keys.elems;
say Circle::.keys.sort;
```

🦋 Utrumque archivum fontem in directorio [exercises/advanced/module-introspection/list-the-symbols](https://github.com/ash/raku-course/tree/master/exercises/advanced/module-introspection/list-the-symbols) invenire potes.

## Outputum

```console
$ raku -I. list.raku
2
($pi $tau)
```

## Commentarii

1. `Circle::` est fasciculus moduli. `.keys` nomina quae continet enumerat, unumquodque cum sigillo suo.

1. `.elems` haec nomina numerat. Modulus duas variabiles `our` definit, itaque numerus est `2`.

1. `.keys` nullum ordinem certum promittit. Itaque `.sort` adhibemus, quod semper idem resultatum alphabeticum dat: `($pi $tau)`. Sine ordinatione, ordo duorum nominum inter cursus mutari posset.

{% include nav.html %}
