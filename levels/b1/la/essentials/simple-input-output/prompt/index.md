---
title: 'Initus cum `prompt`'
---

{% include menu.html %}

Contrarium verbi `say` est `prompt`. Exspectat donec usor aliquid scribit et Enter premit. Deinde input ad programma ut stringam mittit. Eventum `prompt` capere et verbo `say` tradere potes. Tum programma rursus imprimit quod usor scribit. Tale programma scribamus:

```raku
say prompt;
```

Si hoc programma curris, te confundere potest. Programma solum aliquod input exspectat. Itaque bonum est nuntium rogationis pro usore imprimere. Hoc programma usori amicius facit. Ad hoc separatam `say` non requiris. Nuntium tantum verbo `prompt` trade:

```raku
prompt 'Quam linguam discere vis? '
```

Antequam hanc sectionem finiamus, omnes partes componamus. Programma creabimus quod rogat quid usor velit. Deinde locutionem cum textu quem usor inseruit imprimit.

```raku
say 'Discere vis ', prompt 'Quam linguam discere vis? ';
```

Si `Raku` inseruisti, programma locutionem sequentem imprimit:

    Discere vis Raku

Bene, nunc cum programmate loqui possumus. Et id nobiscum loqui iubere possumus!

Nota quod `say` stringas scire debet antequam eas imprimat. Itaque Raku primum `prompt` exsequitur. Sic colloquium in ordine recto manet:

```console
$ raku t.raku 
Quam linguam discere vis? Raku
Discere vis Raku
```

{% include nav.html %}
