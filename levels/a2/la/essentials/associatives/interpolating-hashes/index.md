---
title: Interpolando hashes
---

{% include menu.html %}

Elementa hash in chordis duplici-quotatis interpolare potes. Scribe ea eodem modo ac in codice programmatis: `%data<FR>`. Etiam totum hash interpolare potes. Ad hoc, adde uncos angulares vacuos vel uncos curvos vacuos: `%data{}`. Hoc programma ostendit quomodo operatur:

```raku
my %data = FR => 'Paris', IT => 'Rome';

say "%data<FR>";
say "%data<>";

# Vel:
# say "%data{}";
```

Programma data quae volumus imprimit:

```console
$ raku t.raku
Paris
FR	Paris
IT	Rome
```

Nota: totum hash plus quam unam lineam imprimere potest.

{% include nav.html %}
