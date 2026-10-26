---
title: Map cum duplo puncto
translations_gpt:
---

{% include menu.html %}

## Problema

Haec expressio numeros a `1` ad `10` duplicat. Tum solum eos servat qui maiores sunt quam `10`:

```raku
(1..10).map(* * 2).grep(* > 10).say;
```

Codicem rescribe ita ut vocatio `grep` formam cum colono adhibeat, non parentheses. Reliquum catenae noli mutare. Memento formam cum colono totum reliquum enuntiati accipere. Itaque solum ultima vocatio in catena ea uti potest.

## Exemplum

Programma imprimit:

```
(12 14 16 18 20)
```

## Solutio

✅ [Vide solutionem](solution)

{% include nav.html %}
