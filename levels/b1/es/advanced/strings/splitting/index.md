---
title: Dividir y unir
---

{% include menu.html %}

Hay varias maneras de dividir una cadena en partes y volver a unirlas.

El método `words` divide una cadena en una lista de palabras, cortando en los espacios en blanco:

```raku
say 'Hello big World'.words; # (Hello big World)
```

El método `split` divide una cadena en el separador que elijas:

```raku
say 'a,b,c'.split(','); # (a b c)
```

Un caso especial importante es dividir por la **cadena vacía** `''`. Esto divide una cadena en sus caracteres sueltos. Pero también añade una cadena vacía justo al principio y justo al final. Por eso el resultado tiene dos elementos más de los que quizás esperas:

```raku
say 'abc'.split('').elems;        # 5 — the three letters, plus an empty string at each end
say 'abc'.split('', :skip-empty); # (a b c) — the :skip-empty adverb drops the empties
```

Para dividir una cadena en caracteres, puedes llamar al método `comb` sin argumentos. Lo hace directamente, y no quedan cadenas vacías de más que quitar:

```raku
say 'Raku'.comb; # (R a k u)
```

Para hacer lo contrario, usa el método `join`. Une una lista de valores en una sola cadena y pone un separador entre ellos:

```raku
say <a b c>.join('-'); # a-b-c
```

Dos métodos más trabajan con partes de una cadena. El método `substr` devuelve un trozo de una cadena. Le das una posición inicial y, si quieres, una longitud:

```raku
say 'Hello World'.substr(0, 5); # Hello
say 'Hello World'.substr(6);    # World
```

Y `trim` elimina los espacios en blanco del principio y del final de una cadena:

```raku
say '  hi  '.trim; # hi
```

{% include nav.html %}
