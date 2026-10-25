---
title: '`MAIN` functio'
---

{% include menu.html %}

Programma Raku nullum codicem specialem in initio requirit. Itaque statim cum codice utili incipere potes. Hic codex in nullo [claustro codicis](/la/essentials/code-blocks) est. Exempli gratia, non est in [functione](/la/essentials/functions). Hanc partem programmatis _mainline_ vocamus.

Programma functionem cum nomine speciali `MAIN` habere potest. Hoc in casu Raku primum omnia compilat. Deinde codicem mainline currit. Postea functionem `MAIN` currit.

```raku
say '1. Codex mainline';

sub MAIN {
    say '3. MAIN vocata';
}

say '2. Etiam mainline';
```

Primum hoc programma instructiones `say` in summo gradu currit. Deinde `MAIN` vocat:

```console
$ raku t.raku
1. Codex mainline
2. Etiam mainline
3. MAIN vocata
```

Certe programma etiam solum functionem `MAIN` habere potest. Tum nullum alium codicem mainline habet.

{% include nav.html %}
