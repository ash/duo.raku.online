---
title: Enlace con `:=`
translations_gpt:
---

{% include menu.html %}

Hasta ahora, cada variable que creaste recibía un nuevo contenedor. La asignación con `=` ponía un valor _dentro_ de ese contenedor. La vinculación, que se escribe `:=`, es diferente. Hace que un nombre se refiera a un contenedor _existente_ en lugar de crear uno nuevo.

Después de la vinculación, los dos nombres comparten el mismo contenedor. Así, un cambio hecho con un nombre se ve también con el otro:

```raku
my $x = 10;
my $y := $x;

$x = 20;
say $y; # 20
```

Aquí, `$y := $x` no copia el valor `10`. En cambio, `$y` se convierte en otro nombre para exactamente el mismo contenedor que `$x`. Después, cuando `$x` cambia a `20`, `$y` también da `20`.

Ahora compáralo con la asignación normal. Copia el valor en un contenedor separado:

```raku
my $x = 10;
my $y = $x; # una copia simple

$x = 20;
say $y; # 10
```

La vinculación también funciona con arrays. Este código hace que `@alias` sea otro nombre para `@data`:

```raku
my @data = 1, 2, 3;
my @alias := @data;

@alias[0] = 99;
say @data; # [99 2 3]
```

Un detalle más. Si vinculas un nombre directamente a un valor literal, no hay ningún contenedor detrás. Por eso el nombre pasa a ser de solo lectura:

```raku
my $pi := 3.14;
$pi = 3;
```

```
Cannot assign to an immutable value
  in block <unit> at t.raku line 2
```

{% include nav.html %}
