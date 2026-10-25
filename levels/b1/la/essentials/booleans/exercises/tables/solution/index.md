---
title: 'Solutio: Booleana tabulae'
---

{% include menu.html %}

Hic est unum programma possibile. Eventus omnium operationum Booleanarum imprimit.

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

Cum programma curris, sequentem tabulam imprimit.

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

Nota: operationes Booleanae hic parenthesibus non egent. Maiorem praecedentiam habent. Sed hoc non valet, si concatenatione chordarum uteris:

```raku
say 'Verum && Verum est ' ~ (True && True);
```

Alius modus est [interpolatio codicis](/la/essentials/strings/code-interpolation).

{% include nav.html %}
