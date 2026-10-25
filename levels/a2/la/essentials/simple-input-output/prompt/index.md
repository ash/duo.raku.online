---
title: 'Initus cum `prompt`'
---

{% include menu.html %}

`prompt` est contrarium verbi `say`. Usorem exspectat. Usor aliquid scribit et Enter premit. Deinde `prompt` input ad programma ut stringam mittit. Eventum `prompt` capere et verbo `say` dare potes. Tum programma repetit quod usor scribit. Tale programma scribamus:

```raku
say prompt;
```

Curre hoc programma. Fortasse rem non intellegis. Programma solum aliquod input exspectat. Itaque bonum est primum nuntium imprimere. Tum usus programmatis facilior est. Ad hoc separatam `say` non requiris. Nuntium verbo `prompt` dare potes:

```raku
prompt 'Quam linguam discere vis? '
```

Haec sectio mox desinit. Sed primum omnes partes componamus. Novum programma usorem de votis eius rogat. Deinde locutionem cum textu usoris imprimit.

```raku
say 'Discere vis ', prompt 'Quam linguam discere vis? ';
```

Si `Raku` scribis, programma hanc locutionem imprimit:

    Discere vis Raku

Bene, nunc cum programmate loqui possumus. Et programma nobiscum loqui iubere possumus!

Nota quod `say` stringas scire debet antequam eas imprimit. Itaque Raku primum `prompt` exsequitur. Sic colloquium recto ordine procedit:

```console
$ raku t.raku 
Quam linguam discere vis? Raku
Discere vis Raku
```

{% include nav.html %}
