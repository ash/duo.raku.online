---
title: Citar arrays de cadenas
---

{% include menu.html %}

Algunos arreglos de cadenas tienen solo cadenas cortas sin espacios. Para estos arreglos, Raku ofrece una sintaxis agradable para darles valores.

```raku
my @digits = <zero one two three four five six seven eight nine>;
```

Tú decides si añadir o no espacios extra alrededor de los corchetes angulares. El compilador acepta las dos opciones.

```raku
my @digits = < zero one two three four five six seven eight nine >;
```

Las dos formas son iguales a esta versión simple y directa:

```raku
my @digits = 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine';
```

%%tipblock
## Arreglo vs Lista

Fíjate en que, en los ejemplos de arriba, la cita `< . . . >` crea una `List`, no un `Array`. Puedes comprobarlo llamando al método `WHAT`:

```raku
say <a b c>.WHAT; # (List)
```

Sin embargo, si la asignas a un arreglo, el arreglo recibe los mismos elementos.

```raku
my @a = <a b c>;
say @a.WHAT; # (Array)
```

%%/tipblock

{% include nav.html %}
