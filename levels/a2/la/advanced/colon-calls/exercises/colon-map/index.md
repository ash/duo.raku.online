---
title: Map cum duplo puncto
translations_gpt:
---

{% include menu.html %}

## Problema

Ecce expressio. Numeros a `1` ad `10` duplicat. Tum solum numeros maiores quam `10` servat:

```raku
(1..10).map(* * 2).grep(* > 10).say;
```

Codicem muta. Vocatio methodi `grep` formam cum colono adhibere debet, non parentheses. Reliquum catenae noli mutare. Memento: forma cum colono reliquum enuntiati accipit. Itaque solum ultima vocatio in catena ea uti potest.

## Exemplum

Programma imprimit:

```
(12 14 16 18 20)
```

## Solutio

✅ [Vide solutionem](solution)

{% include nav.html %}
