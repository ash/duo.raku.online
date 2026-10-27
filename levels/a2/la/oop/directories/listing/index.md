---
title: Directorium enumerare
translations_gpt:
---

{% include menu.html %}

Procedura `dir` ingressus directoriae reddit. Ingressus est archivum aut directoria intra eam. Quisque ingressus obiectum semitae est. Ordo ingressuum fixus non est. Itaque homines saepe effectum ordinant. Tum exitus semper eodem ordine venit.

```raku
mkdir 'box';
spurt 'box/a.txt', '';
spurt 'box/b.txt', '';

for dir('box').sort -> $entry {
    say $entry.basename;
}
```

Hoc programma nomina archivorum in directoria `box` imprimit. Nomina in ordine sunt:

```
a.txt
b.txt
```

Quisque ingressus plenum obiectum semitae est. Methodus `basename` solum nomen in fine dat. Partem directoriae non dat. Ab obiecto semitae easdem quaestiones ac prius petere potes: `.f`, `.d`, `.e`. Itaque, exempli gratia, sola archiva ex directoria sumere potes.

{% include nav.html %}
