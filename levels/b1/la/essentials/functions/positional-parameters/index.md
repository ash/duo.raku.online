---
title: Positional parametra
---

{% include menu.html %}

Ordo parametrorum functionis refert. Exempli gratia, functionem creemus quae differentiam inter duos numeros computat:

```raku
sub diff($a, $b) { $a - $b }
```

Clarum est vocationem `diff(10, 20)` alium eventum dare quam `diff(20, 10)`.

Parametri in indice cum commatibus, sicut in functione supra, _positionales_ vocantur. Sensus eorum ex ordine argumentorum pendet, cum functionem vocas.

{% include nav.html %}
