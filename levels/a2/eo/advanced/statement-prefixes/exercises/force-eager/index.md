---
title: Devigi fervoron
translations_gpt:
---

{% include menu.html %}

## Problemo

La prefikso `eager` faras la malon de `lazy`. Ĝi igas Raku produkti la tutan liston tuj. Tiam la listo ne plu estas maldiligenta. Montru la diferencon per `.is-lazy`.

Unue presu, ĉu la senfina intervalo `1 .. Inf` estas maldiligenta. Poste presu, ĉu `eager 1..3` estas maldiligenta. Laste presu, ĉu `lazy 1..3` estas maldiligenta. La rezultoj devas esti `True`, `False`, `True`.

## Ekzemplo

La programo presas:

```
True
False
True
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
