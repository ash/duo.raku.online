---
title: Aplanamiento e itemización
translations_gpt:
---

{% include menu.html %}

Si pones un array dentro de otro, Raku _no_ une sus elementos por sí solo. Mira este programa:

```raku
my @a = 1, 2, 3;
my @b = 4, 5;
my @c = @a, @b;

say @c.elems; # 2
say @c;       # [[1 2 3] [4 5]]
```

El array `@c` tiene solo dos elementos, los arrays `@a` y `@b`. Raku mantiene cada contenedor como un solo elemento. No saca su contenido al array externo. Lo mismo pasa cuando pones un array entre otros valores:

```raku
my @a = 1, 2, 3;
my @d = 0, @a, 99;
say @d; # [0 [1 2 3] 99]
```

Si de verdad quieres una sola secuencia plana, pídela directamente con la rutina `flat`:

```raku
my @a = 1, 2, 3;
my @b = 4, 5;

say flat(@a, @b);       # (1 2 3 4 5)
say flat(@a, @b).elems; # 5
```

## Itemización

A veces quieres lo contrario. Quieres proteger un contenedor para que no se aplane, incluso dentro de `flat`. La construcción `$(...)` _itemiza_ su argumento. Esto significa que marca el resultado como un único elemento. Compara el ejemplo anterior con este:

```raku
my @a = 1, 2, 3;
my @b = 4, 5;

say flat($(@a), @b); # ([1 2 3] 4 5)
```

Aquí, `$(@a)` mantiene `@a` como un solo elemento. Pero `@b` sigue aplanándose en sus dos valores. Esta es otra vez la idea del sigilo `$`. Un `$` significa "trata esto como una sola cosa".

{% include nav.html %}
