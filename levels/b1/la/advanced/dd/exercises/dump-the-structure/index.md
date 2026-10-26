---
title: Structuram datae dump
translations_gpt:
---

{% include menu.html %}

## Problema

Habes structuram datorum insertam sequentem:

```raku
my @data = 'Raku', [1, 2, 3], (key => 'value');
```

Duo cum ea fac:

1. Utere `dd` ut exscriptionem `@data` pro developoribus imprimas.
2. Eandem repraesentationem ut seriem imprime, cum textu `Structure: ` in initio.

## Exemplum

Programma duas lineas similes imprimit:

```
["Raku", [1, 2, 3], :key("value")]
Structure: ["Raku", [1, 2, 3], :key("value")]
```

## Solutio

✅ [Vide solutionem](solution)

{% include nav.html %}
