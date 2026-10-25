---
title: 'Solutio: Booleana tabulae'
---

{% include menu.html %}

Hic est una solutio muneris. Programma omnes eventus operationum Booleanarum imprimit.

## Codex

```raku
say 'Verum && Verum est ', True && True; 
say 'Verum && Falsum est ', True && False;
say 'Falsum && Verum est ', False && True;
say 'Falsum && Falsum est ', False && False;

say 'Verum || Verum est ', True || True; 
say 'Verum || Falsum est ', True || False;
say 'Falsum || Verum est ', False || True;
say 'Falsum || Falsum est ', False || False;

say 'Verum ^^ Verum est ', True ^^ True; 
say 'Verum ^^ Falsum est ', True ^^ False;
say 'Falsum ^^ Verum est ', False ^^ True;
say 'Falsum ^^ Falsum est ', False ^^ False;
```

🦋 Totum codicem invenire potes in archivo [tables.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/booleans/tables.raku).

## Exitus

Programma curre. Hanc tabulam imprimit.

```console
$ raku tables.raku
Verum && Verum est Verum
Verum && Falsum est Falsum
Falsum && Verum est Falsum
Falsum && Falsum est Falsum
Verum || Verum est Verum
Verum || Falsum est Verum
Falsum || Verum est Verum
Falsum || Falsum est Falsum
Verum ^^ Verum est Nil
Verum ^^ Falsum est Verum
Falsum ^^ Verum est Verum
Falsum ^^ Falsum est Falsum
```

## Commentarii

Nota: hic parenthesibus circa operationes Booleanas non opus est. Causa est praecedentia. Praecedentia est ordo quo Raku operationes facit. Operationes Booleanae maiorem praecedentiam habent. Itaque Raku eas primum facit. Sed cum concatenatione chordarum parentheses necessariae sunt:

```raku
say 'Verum && Verum est ' ~ (True && True);
```

Etiam codicem intra chordam ponere potes. Hoc [interpolatio codicis](/la/essentials/strings/code-interpolation) vocatur.

{% include nav.html %}
