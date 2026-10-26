---
title: Tipos con tamaño y desbordamiento
---

{% include menu.html %}

Además del `int` simple, Raku tiene enteros con un tamaño fijo en bits. Son `int8`, `int16`, `int32`, `int64` y sus parejas sin signo `uint8`, `uint16`, `uint32`, `uint64`. El número indica cuántos bits ocupa el valor.

Cuando el ancho es fijo, el rango también es fijo. Un `int8` guarda valores de `-128` a `127`, y un `uint8` de `0` a `255`. El almacenamiento no puede crecer, así que al pasar del tope, el valor da la vuelta al mínimo. Esto se llama _desbordamiento_ (overflow):

```raku
my int8 $i = 127;
$i++;
say $i; # -128
```

Si sumas uno al `int8` más grande, no obtienes `128`. Ese número no cabría. En su lugar, da la vuelta hasta el valor más pequeño, `-128`. Los tipos sin signo también dan la vuelta:

```raku
my uint8 $u = 255;
$u++;
say $u; # 0
```

Un `Int` normal es lo contrario. Simplemente crece tanto como haga falta y nunca se desborda. Este trato es la idea principal de los tipos nativos con tamaño. Aceptas un rango fijo. A cambio, obtienes un almacenamiento predecible, pequeño y rápido.

¿Conoces el rango de tus datos y quieres eficiencia? Entonces usa un tipo nativo con tamaño. Por ejemplo, guarda bytes de datos binarios en un array `uint8`. Para la aritmética normal, donde los números pueden crecer sin límite, sigue con `Int`.

{% include nav.html %}
