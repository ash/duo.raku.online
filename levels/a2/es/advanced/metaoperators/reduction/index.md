---
title: Metaoperadores de reducción
translations_gpt:
---

{% include menu.html %}

Escribes un meta-operador de reducción como un operador normal entre corchetes. Dos ejemplos son `[+]` y `[*]`. Toma una lista de valores. Pone el operador entre cada dos valores. Así, toda la lista se convierte en un solo valor.

Por ejemplo, `[+]` suma todos los elementos de una lista:

```raku
my @data = 3, 5, 7, 9, 11;
say [+] @data; # 35
```

`[+] @data` es lo mismo que escribir todos los operadores tú mismo:

```raku
say 3 + 5 + 7 + 9 + 11; # 35
```

Otros operadores infijos también pueden funcionar así. Con `[*]`, obtienes el producto de la lista. Úsalo con el rango `1..$n`. Es una forma fácil de calcular un factorial:

```raku
my $n = 5;
say [*] 1..$n; # 120
```

Aquí, el rango `1..$n` da los números del 1 al 5. Después `[*]` los multiplica: `1 * 2 * 3 * 4 * 5`. Esto es _5!_.

También funciona con cadenas. La reducción `[~]` une una lista de cadenas en una sola cadena:

```raku
my @strings = <neun hundert fünf und zwanzig>;
say [~] @strings; # neunhundertfünfundzwanzig
```

Puedes reducir incluso los operadores de comparación. `[<]` te dice si cada valor es mayor que el valor anterior:

```raku
say [<] 1, 2, 3; # True
```

## Reducción triangular

Pon una barra invertida dentro de los corchetes. Entonces obtienes una reducción _triangular_. Guarda el resultado de cada paso, no solo el último resultado:

```raku
say [\+] 1..5; # (1 3 6 10 15)
```

Cada elemento del resultado es la suma de los primeros números: `1`, luego `1+2`, luego `1+2+3`, y así sucesivamente. El último elemento es la suma de toda la lista.

{% include nav.html %}
