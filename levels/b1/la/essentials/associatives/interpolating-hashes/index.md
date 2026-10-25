---
title: Interpolando hashes
---

{% include menu.html %}

Elementa hash in chordis duplici-quotatis interpolare potes. Scribe ea sicut in programmate ipso: `%data<FR>`. Ut totum hash interpoles, adde par uncorum angularium vel curvorum vacuorum: `%data{}`. Programma sequens ostendit quomodo hoc operatur:

```raku
my %data = FR => 'Paris', IT => 'Rome';

say "%data<FR>";
say "%data<>";

# Vel:
# say "%data{}";
```

Hoc programma data quae petivimus imprimit:

```console
$ raku t.raku
Paris
FR	Paris
IT	Rome
```

Nota: cum totum hash imprimis, output plures lineas occupare potest.

{% include nav.html %}
