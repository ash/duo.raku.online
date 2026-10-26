---
title: Despacho múltiple
translations_gpt:
---

{% include menu.html %}

En la parte de Esenciales, conociste las [_multi-funciones_](/es/essentials/more-on-functions/multi-functions). Son varias subrutinas con el mismo nombre. Raku elige la correcta mirando los tipos de los argumentos. Esto se llama _despacho múltiple_.

Hasta ahora, Raku elegía por el _tipo_ de los argumentos. Una cláusula `where` te permite ir más allá y elegir también por el _valor_. La escribes después de un parámetro, y contiene una condición. El argumento debe cumplir esta condición, o ese candidato no se elige:

```raku
multi sub info(Int $n where $n < 0)  { say "$n is negative" }
multi sub info(Int $n where $n == 0) { say "$n is zero" }
multi sub info(Int $n where $n > 0)  { say "$n is positive" }

info(-5);
info(0);
info(7);
```

Cada llamada ejecuta el candidato que tiene una condición verdadera para el valor dado:

```
-5 is negative
0 is zero
7 is positive
```

Si miras solo los tipos, los tres candidatos tienen la misma firma: un `Int`. Así que sin las cláusulas `where`, entrarían en conflicto. Las condiciones los hacen diferentes entre sí.

## Un caso base para la recursión

`where` se usa a menudo para el punto de parada de una recursión. Este punto tiene su propio candidato. Aquí está otra vez el factorial, ahora como dos multi-subs:

```raku
multi sub fact(Int $n where $n <= 1) { 1 }
multi sub fact(Int $n)               { $n * fact($n - 1) }

say fact(5); # 120
```

El primer candidato se ocupa del caso base, cuando `$n` es `1` o menos. Simplemente devuelve `1`. Cualquier otro valor va al segundo candidato. Este llama a `fact` otra vez con un número más pequeño. No hay ningún `if` dentro de la función. El despachador elige entre el caso base y el paso recursivo.

{% include nav.html %}
