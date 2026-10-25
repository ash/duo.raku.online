---
title: '`MAIN` functio'
---

{% include menu.html %}

Programma Raku nullum codicem solitum requirit quem semper scribere debes. Itaque statim instructiones utiles scribere incipere potes. Haec pars programmatis extra omnia [claustra codicis](/la/essentials/code-blocks) iacet, etiam extra [functiones](/la/essentials/functions), exempli gratia. Vocatur _mainline_.

Si programma functionem cum nomine speciali `MAIN` habet, Raku eam ultimam currit. Hoc fit postquam Raku omnia compilavit et postquam codicem mainline cucurrit.

```raku
say '1. Codex mainline';

sub MAIN {
    say '3. MAIN vocata';
}

say '2. Etiam mainline';
```

Hoc programma primum instructiones `say` in summo gradu currit et deinde `MAIN` vocat:

```console
$ raku t.raku
1. Codex mainline
2. Etiam mainline
3. MAIN vocata
```

Certe programma etiam functionem `MAIN` et nullum alium codicem mainline habere potest.

{% include nav.html %}
