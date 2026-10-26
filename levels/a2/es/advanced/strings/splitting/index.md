---
title: Dividir y unir
---

{% include menu.html %}

Puedes dividir una cadena en partes de varias maneras. También puedes volver a unir las partes.

El método `words` divide una cadena en una lista de palabras. Los espacios en blanco, por ejemplo un espacio, separan las palabras:

```raku
say 'Hello big World'.words; # (Hello big World)
```

El método `split` corta una cadena en un separador. Tú eliges el separador:

```raku
say 'a,b,c'.split(','); # (a b c)
```

Aquí tienes un caso especial importante. Puedes dividir por la **cadena vacía** `''`. Entonces obtienes los caracteres sueltos de la cadena. Pero también obtienes dos cadenas vacías más. Están justo al principio y justo al final. Por eso el resultado tiene dos elementos más de lo que esperas:

```raku
say 'abc'.split('').elems;        # 5 — the three letters, plus an empty string at each end
say 'abc'.split('', :skip-empty); # (a b c) — the :skip-empty adverb drops the empties
```

¿Quieres dividir una cadena en caracteres? Llama al método `comb` sin argumentos. Lo hace directamente. No hay cadenas vacías de más:

```raku
say 'Raku'.comb; # (R a k u)
```

El método `join` hace lo contrario. Une una lista de valores en una sola cadena. Pone un separador entre los valores:

```raku
say <a b c>.join('-'); # a-b-c
```

Dos métodos más trabajan con partes de una cadena. El método `substr` te da un trozo de una cadena. Tú le das una posición inicial. Si quieres, también le puedes dar una longitud:

```raku
say 'Hello World'.substr(0, 5); # Hello
say 'Hello World'.substr(6);    # World
```

Y `trim` quita los espacios en blanco de los dos extremos de una cadena:

```raku
say '  hi  '.trim; # hi
```

{% include nav.html %}
