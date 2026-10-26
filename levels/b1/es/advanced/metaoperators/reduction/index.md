---
title: Metaoperadores de reducción
translations_gpt:
---

{% include menu.html %}

Un meta-operador de reducción es un operador normal entre corchetes, como `[+]` o `[*]`. Toma una lista de valores y pone el operador entre cada par de ellos. Así, reduce toda la lista a un único valor.

Por ejemplo, `[+]` suma todos los elementos de una lista:

```raku
my @data = 3, 5, 7, 9, 11;
say [+] @data; # 35
```

El código `[+] @data` es lo mismo que escribir el operador a mano:

```raku
say 3 + 5 + 7 + 9 + 11; # 35
```

Cualquier operador infijo adecuado funciona de la misma forma. Con `[*]`, obtienes el producto de la lista. Así puedes usarlo con el rango `1..$n` para calcular un factorial fácilmente:

```raku
my $n = 5;
say [*] 1..$n; # 120
```

Aquí, el rango `1..$n` da los números del 1 al 5, y `[*]` los multiplica: `1 * 2 * 3 * 4 * 5`. El resultado es _5!_.

También sirve para unir cadenas. La reducción `[~]` une una lista de cadenas en una sola:

```raku
my @strings = <neun hundert fünf und zwanzig>;
say [~] @strings; # neunhundertfünfundzwanzig
```

Incluso puedes reducir los operadores de comparación. `[<]` te dice si cada valor es mayor que el anterior:

```raku
say [<] 1, 2, 3; # True
```

## Reducción triangular

Si pones una barra invertida dentro de los corchetes, obtienes una reducción _triangular_. Guarda todos los resultados intermedios, no solo el final:

```raku
say [\+] 1..5; # (1 3 6 10 15)
```

Cada elemento del resultado es una suma parcial: `1`, luego `1+2`, luego `1+2+3`, y así sucesivamente. El último es la suma de toda la lista.

{% include nav.html %}
