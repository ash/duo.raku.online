---
title: 'Solutio: Symbola enumerare'
translations_gpt: true
---

{% include menu.html %}

Hoc modo munus solvere potes.

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

1. `Circle::` est fasciculus moduli. `.keys` nomina in eo enumerat. Quodque nomen sigillum suum habet.

1. `.elems` haec nomina numerat. Modulus duas variabiles `our` habet. Itaque numerus est `2`.

1. `.keys` nomina non in ordine fixo dat. Itaque `.sort` adhibemus. Id nomina ordine alphabetico ponit. Nunc resultatum semper idem est: `($pi $tau)`. Sine ordinatione, ordo duorum nominum mutari potest. In quoque cursu programmatis alius esse potest.

{% include nav.html %}
