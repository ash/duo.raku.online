---
title: Tipos nativos
---

{% include menu.html %}

Los tipos que has usado hasta ahora, `Int`, `Num` y `Str`, son objetos completos de Raku. Son flexibles y te pueden dar información sobre sí mismos. También pueden ser tan grandes como necesites. Raku también tiene una segunda familia paralela de tipos _nativos_. Siguen directamente la forma en que la propia máquina guarda los valores. Son `int`, `num`, `str` y un conjunto de enteros con un tamaño fijo.

Los tipos nativos tienen nombres en minúsculas. Pierden algo de flexibilidad para ganar velocidad y un tamaño fijo. También se comportan un poco diferente de los tipos encapsulados correspondientes. Esta sección muestra qué son los tipos nativos y cómo su tamaño fijo lleva al desbordamiento.

{% include nav.html %}
