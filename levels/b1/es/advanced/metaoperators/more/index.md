---
title: Cross, hyper y negados
translations_gpt:
---

{% include menu.html %}

Además de la reducción y el zip, Raku tiene varios meta-operadores más. Es útil conocer tres de ellos en este punto.

## Cross — `X`

El meta-operador cross `X` toma dos listas. Empareja **cada** elemento de una con **cada** elemento de la otra. Esto se llama producto cartesiano:

```raku
say <a b> X <1 2>; # ((a 1) (a 2) (b 1) (b 2))
```

Como zip, puede envolver un operador, que entonces trabaja con cada par. `X~` une cada par en una cadena, y `X*` multiplica los valores:

```raku
say <a b> X~ <1 2>;         # (a1 a2 b1 b2)
say (1, 2, 3) X* (10, 100); # (10 100 20 200 30 300)
```

Zip recorre dos listas una al lado de la otra, mientras que cross las combina de todas las formas posibles.

## Hyper — `>>...<<`

Un meta-operador hyper aplica un operador a **cada elemento** de una lista. El operador va dentro de las flechas `»…«`, o de su forma ASCII `>>…<<`. Con dos listas, trabaja elemento por elemento, como zip. Si un lado tiene un solo valor, extiende ese valor a toda la lista:

```raku
say (1, 2, 3) »+» (10, 20, 30); # (11 22 33)
say (1, 2, 3) »*» 2;            # (2 4 6)
```

Las dos flechas no tienen que apuntar en la misma dirección. Su dirección decide qué pasa cuando las listas tienen longitudes diferentes. Si una flecha apunta **hacia** una lista, esa lista puede repetirse hasta igualar a la otra. Estas son las cuatro combinaciones, escritas en ASCII con `<<` y `>>`:

* `>>op<<` — no se repite ninguna lista, así que las listas ya deben tener la misma longitud, o hay un error;
* `>>op>>` — la lista **derecha** se repite hasta igualar a la izquierda;
* `<<op<<` — la lista **izquierda** se repite hasta igualar a la derecha;
* `<<op>>` — la lista **más corta** se repite hasta igualar a la más larga.

```raku
say (1, 2, 3, 4) <<+>> (10, 20); # (11 22 13 24)  — 10, 20 repeats to 10, 20, 10, 20
```

También existe una forma unaria, con un solo operando. Llama a un método en cada elemento. `>>.uc` convierte cada cadena a mayúsculas:

```raku
say <raku perl>>>.uc; # (RAKU PERL)
```

Las operaciones hyper también indican que el trabajo *puede* hacerse en paralelo. Más adelante verás el método relacionado `.hyper`, en [la sección sobre programación concurrente](/es/paradigms/hyper-race).

## Negado — `!`

Si pones `!` antes de un operador de comparación, obtienes el resultado contrario. El conocido `!=` (no igual) es justo este meta-operador usado con `==`. Lo mismo funciona con otros operadores booleanos, como `eq` y `%%`:

```raku
say 3 != 4;      # True
say 'a' !eq 'b'; # True  — not equal as strings
say 5 !%% 2;     # True  — 5 is not divisible by 2
```

En resumen, `$a !op $b` es solo una forma más ordenada de escribir `!($a op $b)`.

Esto es a propósito. Algunos lenguajes, como el esperanto, son pequeños y simples a propósito. Intentan tener una forma regular de decir cada cosa. Raku es diferente y con gusto te da varias formas. Por eso el negado `!eq` existe justo al lado del operador especial `ne`. Los dos significan exactamente lo mismo:

```raku
say 'a' ne 'b'; # True — the same test as 'a' !eq 'b'
```

{% include nav.html %}
