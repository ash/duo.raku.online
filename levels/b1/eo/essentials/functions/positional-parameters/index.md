---
title: Poziciaj parametroj
---

{% include menu.html %}

La ordo de funkciaj parametroj gravas. Ekzemple, ni kreu funkcion, kiu kalkulas la diferencon inter du nombroj:

```raku
sub diff($a, $b) { $a - $b }
```

Estas klare, ke la voko `diff(10, 20)` donas alian rezulton ol `diff(20, 10)`.

Parametrojn en listo kun komoj, kiel en la supra funkcio, oni nomas _poziciaj_. Ilia signifo dependas de la ordo de la argumentoj, kiam vi vokas la funkcion.

{% include nav.html %}
