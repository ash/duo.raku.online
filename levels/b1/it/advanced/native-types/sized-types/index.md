---
title: Tipi dimensionati e overflow
---

{% include menu.html %}

Oltre al semplice `int`, Raku ha interi con una dimensione fissa in bit. Sono `int8`, `int16`, `int32`, `int64` e i loro compagni senza segno `uint8`, `uint16`, `uint32`, `uint64`. Il numero mostra quanti bit occupa il valore.

Quando la larghezza è fissa, anche l'intervallo è fisso. Un `int8` contiene valori da `-128` a `127`, e un `uint8` da `0` a `255`. Lo spazio non può crescere, quindi un valore che supera il massimo si riavvolge al minimo. Questo si chiama _overflow_:

```raku
my int8 $i = 127;
$i++;
say $i; # -128
```

Se aggiungi uno al valore massimo di `int8`, non ottieni `128`. Quel numero non ci starebbe. Invece, si riavvolge al valore minimo, `-128`. Anche i tipi senza segno si riavvolgono:

```raku
my uint8 $u = 255;
$u++;
say $u; # 0
```

Un normale `Int` è l'opposto. Cresce semplicemente quanto serve e non va mai in overflow. Questo scambio è proprio il senso dei tipi nativi di dimensione fissa. Accetti un intervallo fisso. In cambio, hai uno spazio prevedibile, piccolo e veloce.

Conosci l'intervallo dei tuoi dati e vuoi efficienza? Allora usa un tipo nativo di dimensione fissa. Per esempio, tieni i byte di dati binari in un array `uint8`. Per l'aritmetica normale, dove i numeri possono crescere senza limiti, resta con `Int`.

{% include nav.html %}
