---
title: run et shell
translations_gpt:
---

{% include menu.html %}

Programma externum duobus modis incipere potes. Primus est functio `run`. Interpretem non adhibet. Interpres est programma quod imperata legit et currit. `run` imperatum et argumenta eius ut valores **separatos** accipit. Argumenta sunt valores quos imperato das. Deinde `run` programma directe incipit:

```raku
run 'echo', 'hello';
```

Hoc programma `echo` cum uno argumento, `hello`, currit. Programma `hello` imprimit. Argumenta separatim ad programma veniunt. Itaque nullus interpres spatia aut characteres speciales male intellegere potest. Ideo `run` electio praedefinita tuta est.

Functio `shell` alio modo operatur. Ea **unam chordam** ad interpretem systematis dat. Interpres chordam legit et currit. Itaque facultates interpretis adhibere potes, ut redirectionem et fistulas. Redirectio exitum in alium locum mittit, exempli gratia in archivum. Fistula exitum unius imperati ad proximum mittit:

```raku
shell 'echo hello | tr a-z A-Z';
```

Hic interpres `echo` currit. Fistula exitum eius ad `tr` mittit. Deinde interpres `HELLO` imprimit. Hoc facile est, sed periculum est. Ipse interpres chordam legit et partes eius invenit. Fortasse chorda ex introitu venit cui non confidis. Tum imperatum `shell` periculosum est. Utere `run`, nisi facultates interpretis vere requiris.

Ambae functiones obiectum `Proc` reddunt. Tibi dicit quomodo programma finierit. Plerumque programma inceptum eundem exitum adhibet quem programma tuum. Itaque exitum eius in screen vides. Etiam hunc exitum capere potes. Ad hoc eum petere debes. Argumentum sequens ostendit quomodo.

{% include nav.html %}
