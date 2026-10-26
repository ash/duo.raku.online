---
title: Keys, values y pairs
---

{% include menu.html %}

Otros adverbios cambian **qué** devuelve un subíndice. Normalmente, un subíndice devuelve el valor. Estos adverbios devuelven más:

* `:v` — el valor; es lo predeterminado
* `:k` — la clave o el índice
* `:kv` — la clave y el valor
* `:p` — un `Pair` de la clave y el valor

Para un array, la "clave" es el índice:

```raku
my @a = 10, 20, 30;

say @a[1]:kv; # (1 20)
say @a[1]:p;  # 1 => 20
```

`@a[1]:kv` devuelve el índice y el valor juntos en una lista. `@a[1]:p` los devuelve como un par.

Esto también funciona con hashes. Es muy útil con un segmento. Un segmento tiene varias claves a la vez:

```raku
my %h = a => 1, b => 2, c => 3;

say %h<a c>:kv; # (a 1 c 3)
```

Aquí, el segmento tiene dos claves. El resultado es una clave, su valor, la siguiente clave, su valor. `map`, `for` y herramientas parecidas usan a menudo estos adverbios. Con ellos, puedes trabajar con claves y valores juntos. No necesitas consultas separadas.

{% include nav.html %}
