---
title: Enlace con `:=`
translations_gpt:
---

{% include menu.html %}

Hasta ahora, cada variable nueva creaba un contenedor nuevo. La asignación con `=` ponía un valor _dentro_ de este contenedor. La vinculación es diferente. La escribes con `:=`. La vinculación no crea un contenedor nuevo. Da un nombre a un contenedor _existente_.

Después de la vinculación, los dos nombres comparten un contenedor. Cambia el valor con un nombre. El otro nombre también ve el cambio:

```raku
my $x = 10;
my $y := $x;

$x = 20;
say $y; # 20
```

Aquí, `$y := $x` no copia el valor `10`. Convierte `$y` en un segundo nombre del contenedor de `$x`. Es el mismo contenedor. Después, `$x` recibe el valor `20`. Entonces `$y` también es `20`.

Compara esto con la asignación normal. Copia el valor en otro contenedor:

```raku
my $x = 10;
my $y = $x; # una copia simple

$x = 20;
say $y; # 10
```

La vinculación también funciona con arrays. Aquí, `@alias` se convierte en un segundo nombre para `@data`:

```raku
my @data = 1, 2, 3;
my @alias := @data;

@alias[0] = 99;
say @data; # [99 2 3]
```

Un detalle más. Puedes vincular un nombre directamente a un valor literal. Es un valor que escribes en el código. Entonces no hay ningún contenedor detrás del nombre. Por eso el nombre es de solo lectura. No puedes asignarle nada:

```raku
my $pi := 3.14;
$pi = 3;
```

```
Cannot assign to an immutable value
  in block <unit> at t.raku line 2
```

{% include nav.html %}
