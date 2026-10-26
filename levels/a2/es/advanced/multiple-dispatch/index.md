---
title: Despacho múltiple
translations_gpt:
---

{% include menu.html %}

En la parte de Esenciales, aprendiste sobre las [_multi-funciones_](/es/essentials/more-on-functions/multi-functions). Son varias subrutinas con el mismo nombre. Raku mira los tipos de los argumentos. Después elige la subrutina correcta. Esto se llama _despacho múltiple_.

Hasta ahora, Raku elegía por el _tipo_ de los argumentos. Con una cláusula `where`, puedes hacer más. Raku también puede elegir por el _valor_. Escribes `where` después de un parámetro. Tiene una condición. Cada variante de la función se llama candidato. Raku elige un candidato solo cuando su condición es verdadera para el argumento:

```raku
multi sub info(Int $n where $n < 0)  { say "$n is negative" }
multi sub info(Int $n where $n == 0) { say "$n is zero" }
multi sub info(Int $n where $n > 0)  { say "$n is positive" }

info(-5);
info(0);
info(7);
```

Cada llamada va al candidato con una condición verdadera para ese valor:

```
-5 is negative
0 is zero
7 is positive
```

Mira los tipos. Los tres candidatos tienen la misma firma: un `Int`. Sin las cláusulas `where`, chocan. Raku no puede elegir entre ellos. Las condiciones los hacen diferentes.

## Detener una recursión

La gente usa a menudo `where` con la recursión. En una recursión, una función se llama a sí misma. Debe parar en algún momento. Puedes poner este punto de parada en un candidato aparte. Aquí está otra vez el factorial. Ahora tiene dos multi-subs:

```raku
multi sub fact(Int $n where $n <= 1) { 1 }
multi sub fact(Int $n)               { $n * fact($n - 1) }

say fact(5); # 120
```

El primer candidato es el caso base. Aquí, la recursión se detiene. En este caso, `$n` es `1` o menos. Este candidato simplemente devuelve `1`. Todos los demás valores van al segundo candidato. Este llama a `fact` otra vez con un número más pequeño. No hay ningún `if` dentro de la función. El despachador elige entre el caso base y el paso recursivo. El despachador es la parte de Raku que elige un candidato.

{% include nav.html %}
