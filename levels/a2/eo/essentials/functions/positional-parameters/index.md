---
title: Poziciaj parametroj
---

{% include menu.html %}

La ordo de funkciaj parametroj estas grava. Ekzemple, prenu funkcion. Ĝi trovas la diferencon inter du nombroj:

```raku
sub diff($a, $b) { $a - $b }
```

Kompreneble, `diff(10, 20)` kaj `diff(20, 10)` donas malsamajn rezultojn.

En la supra funkcio, la parametroj estas listo kun komoj. Tiajn parametrojn oni nomas _poziciaj_. En voko, la ordo de la argumentoj estas grava. Ĝi decidas la signifon de ĉiu parametro.

{% include nav.html %}
