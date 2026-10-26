---
title: Keys, values y pairs
---

{% include menu.html %}

Otros adverbios cambian **qué** devuelve un subíndice. Normalmente, un subíndice devuelve solo el valor, pero estos adverbios devuelven más:

* `:v` — el valor (lo predeterminado)
* `:k` — la clave (o el índice)
* `:kv` — tanto la clave como el valor
* `:p` — un `Pair` de clave y valor

Para un array, la "clave" es el índice:

```raku
my @a = 10, 20, 30;

say @a[1]:kv; # (1 20)
say @a[1]:p;  # 1 => 20
```

`@a[1]:kv` da el índice y el valor juntos en una lista. `@a[1]:p` los da como un par.

Lo mismo funciona con hashes. Es especialmente útil con un segmento de varias claves a la vez:

```raku
my %h = a => 1, b => 2, c => 3;

say %h<a c>:kv; # (a 1 c 3)
```

Aquí, un segmento de dos claves devuelve cada clave seguida de su valor. `map`, `for` y herramientas parecidas a menudo se apoyan en estos adverbios. Te permiten procesar claves y valores lado a lado, sin consultas separadas.

{% include nav.html %}
