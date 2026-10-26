---
title: Tipos con tamaño y desbordamiento
---

{% include menu.html %}

Raku tiene el `int` simple. También tiene enteros con un número fijo de bits. Son `int8`, `int16`, `int32` e `int64`. Cada uno tiene una pareja sin signo: `uint8`, `uint16`, `uint32` y `uint64`. Los valores sin signo nunca son negativos. El número del nombre dice cuántos bits ocupa el valor.

Un tamaño fijo significa un rango fijo de valores. Un `int8` guarda valores de `-128` a `127`. Un `uint8` guarda valores de `0` a `255`. El almacenamiento no puede crecer. Por eso, cuando un valor pasa del tope, da la vuelta. Vuelve a empezar por abajo. Esto es el _desbordamiento_ (overflow):

```raku
my int8 $i = 127;
$i++;
say $i; # -128
```

Suma uno al `int8` más grande. No obtienes `128`, porque `128` no cabe. El valor da la vuelta hasta el valor más pequeño, `-128`. Los tipos sin signo también dan la vuelta:

```raku
my uint8 $u = 255;
$u++;
say $u; # 0
```

Un `Int` normal es lo contrario. Simplemente crece tanto como hace falta. Nunca se desborda. Los tipos nativos con tamaño son un trato. Aceptas un rango fijo. A cambio, el almacenamiento es pequeño, rápido y sin sorpresas. Este trato es la idea principal de los tipos nativos con tamaño.

¿Conoces el rango de tus datos? ¿Quieres un almacenamiento rápido y pequeño? Entonces usa un tipo nativo con tamaño. Por ejemplo, guarda bytes de datos binarios en un array `uint8`. En la aritmética normal, los números pueden crecer sin límite. Ahí, usa `Int`.

{% include nav.html %}
