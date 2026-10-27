---
title: Directorium enumerare
translations_gpt:
---

{% include menu.html %}

Procedura `dir` ingressus directoriae reddit, unumquemque ut obiectum semitae. Ordo eorum fixus non est. Itaque homines saepe effectum ordinant, et tum exitus semper eundem ordinem habet.

```raku
mkdir 'box';
spurt 'box/a.txt', '';
spurt 'box/b.txt', '';

for dir('box').sort -> $entry {
    say $entry.basename;
}
```

Programma nomina ordinata archivorum in directoria `box` imprimit:

```
a.txt
b.txt
```

Quisque ingressus plenum obiectum semitae est. Methodus `basename` solum nomen ultimum dat, sine parte directoriae. Ab obiecto semitae easdem quaestiones ac prius petere potes: `.f`, `.d` et `.e`. Itaque potes, exempli gratia, per directoriam ire et sola archiva eligere.

{% include nav.html %}
