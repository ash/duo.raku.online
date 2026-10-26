---
title: Secuencias perezosas e infinitas
translations_gpt:
---

{% include menu.html %}

Una secuencia no necesita calcular todos sus valores a la vez. Las secuencias de Raku son _perezosas_ (lazy): cada valor se crea solo cuando de verdad se necesita. Así puedes describir una secuencia que no tiene ningún final.

Para escribir una secuencia infinita, usa `Inf` como punto final. El operador `...` tiene menor precedencia que `=`, así que Raku haría primero el `=`. Por eso pones la secuencia entre paréntesis:

```raku
my $naturals = (1 ... Inf);
```

Sin los paréntesis, `my $naturals = 1 ... Inf` asignaría solo `1` a la variable. Luego construiría la secuencia por separado. Calcular una secuencia sin fin que nadie usa haría que el programa se colgara.

En este punto, no se calcula nada. La secuencia solo entrega valores cuando los pides. El método `head` toma los primeros de ellos:

```raku
say (1 ... Inf).head(5); # (1 2 3 4 5)
```

La secuencia es infinita, pero solo se generan los primeros cinco números. Sin la evaluación perezosa, el programa intentaría construir toda la secuencia sin fin. Un programa así nunca terminaría.

Si una secuencia es finita, el método `tail` puede tomar, en cambio, valores de su final:

```raku
say (1 ... 100).tail(3); # (98 99 100)
```

La evaluación perezosa te permite separar dos cosas. La primera es la _descripción_ de una secuencia. La segunda es la decisión de cuánto de ella usar.

{% include nav.html %}
