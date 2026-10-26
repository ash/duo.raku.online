---
title: Tipi dimensionati e overflow
---

{% include menu.html %}

Raku ha il semplice `int`. Ha anche interi con un numero fisso di bit. Sono `int8`, `int16`, `int32` e `int64`. Ognuno ha un compagno senza segno: `uint8`, `uint16`, `uint32` e `uint64`. I valori senza segno non sono mai negativi. Il numero nel nome dice quanti bit occupa il valore.

Una dimensione fissa vuol dire un intervallo fisso di valori. Un `int8` contiene valori da `-128` a `127`. Un `uint8` contiene valori da `0` a `255`. Lo spazio non può crescere. Così, quando un valore supera il massimo, si riavvolge. Riparte dal minimo. Questo è l'_overflow_:

```raku
my int8 $i = 127;
$i++;
say $i; # -128
```

Aggiungi uno al valore più grande di `int8`. Non ottieni `128`, perché `128` non ci sta. Il valore si riavvolge al valore più piccolo, `-128`. Anche i tipi senza segno si riavvolgono:

```raku
my uint8 $u = 255;
$u++;
say $u; # 0
```

Un normale `Int` è l'opposto. Cresce semplicemente quanto serve. Non va mai in overflow. I tipi nativi di dimensione fissa sono uno scambio. Accetti un intervallo fisso. In cambio, lo spazio è piccolo, veloce e senza sorprese. Questo scambio è proprio il senso dei tipi nativi di dimensione fissa.

Conosci l'intervallo dei tuoi dati? Vuoi uno spazio veloce e piccolo? Allora usa un tipo nativo di dimensione fissa. Per esempio, metti i byte di dati binari in un array `uint8`. Nei calcoli normali, i numeri possono crescere senza limiti. Lì usa `Int`.

{% include nav.html %}
