---
title: Cross, hyper y negados
translations_gpt:
---

{% include menu.html %}

Raku tiene más meta-operadores, no solo la reducción y el zip. Aquí aprendes tres de ellos.

## Cross — `X`

El meta-operador cross `X` toma dos listas y forma pares. Aquí, **cada** elemento de una lista va con **cada** elemento de la otra. Esto se llama producto cartesiano:

```raku
say <a b> X <1 2>; # ((a 1) (a 2) (b 1) (b 2))
```

Como zip, `X` también puede tomar un operador. Entonces el operador trabaja con cada par. `X~` une cada par en una cadena. `X*` multiplica los dos números:

```raku
say <a b> X~ <1 2>;         # (a1 a2 b1 b2)
say (1, 2, 3) X* (10, 100); # (10 100 20 200 30 300)
```

Zip pasa por dos listas, una al lado de la otra. Cross las junta de todas las formas posibles.

## Hyper — `>>...<<`

Un meta-operador hyper usa un operador con **cada elemento** de una lista. El operador va entre las flechas `»…«`. Con solo caracteres ASCII, escribes `>>…<<`. Con dos listas, trabaja elemento por elemento, como zip. A veces un lado tiene solo un valor. Entonces usa este valor con cada elemento de la lista:

```raku
say (1, 2, 3) »+» (10, 20, 30); # (11 22 33)
say (1, 2, 3) »*» 2;            # (2 4 6)
```

Las dos flechas pueden apuntar en direcciones diferentes. La dirección importa cuando las listas tienen longitudes diferentes. Si una flecha apunta **hacia** una lista, Raku puede repetir esta lista. Entonces es tan larga como la otra lista. Estas son las cuatro combinaciones en ASCII, con `<<` y `>>`:

* `>>op<<` — Raku no repite ninguna lista. Las listas deben tener la misma longitud. Si no, obtienes un error.
* `>>op>>` — Raku repite la lista **derecha**. Así es tan larga como la izquierda.
* `<<op<<` — Raku repite la lista **izquierda**. Así es tan larga como la derecha.
* `<<op>>` — Raku repite la lista **más corta**. Así es tan larga como la más larga.

```raku
say (1, 2, 3, 4) <<+>> (10, 20); # (11 22 13 24)  — 10, 20 repeats to 10, 20, 10, 20
```

También hay una forma con un solo operando. Llama a un método en cada elemento. `>>.uc` cambia cada cadena a letras mayúsculas:

```raku
say <raku perl>>>.uc; # (RAKU PERL)
```

Una operación hyper también le dice algo más a Raku. Raku *puede* hacer el trabajo en paralelo. Entonces varias partes del trabajo se ejecutan al mismo tiempo. Más adelante, aprenderás el método parecido `.hyper`. Está en [la sección sobre programación concurrente](/es/paradigms/hyper-race).

## Negado — `!`

Pon `!` antes de un operador de comparación. Entonces obtienes el resultado contrario. Ya conoces `!=`, o “no igual”. Es solo este meta-operador con `==`. Otros operadores también dan `True` o `False`, como `eq` y `%%`. El meta-operador funciona con ellos de la misma forma:

```raku
say 3 != 4;      # True
say 'a' !eq 'b'; # True  — not equal as strings
say 5 !%% 2;     # True  — 5 is not divisible by 2
```

Así, `$a !op $b` es solo una forma más limpia de escribir `!($a op $b)`.

Raku hace esto a propósito. Algunos lenguajes son pequeños y simples a propósito, como el esperanto. El esperanto intenta tener una forma regular de decir cada cosa. Raku es diferente. Con gusto te da varias formas. Por eso Raku tiene el negado `!eq`. También tiene un operador especial `ne`. Los dos significan exactamente lo mismo:

```raku
say 'a' ne 'b'; # True — the same test as 'a' !eq 'b'
```

{% include nav.html %}
