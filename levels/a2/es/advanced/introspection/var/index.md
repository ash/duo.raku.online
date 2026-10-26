---
title: Usando `VAR`
---

{% include menu.html %}

`VAR` es un pseudo-método. Devuelve el objeto contenedor que hay detrás de una variable. Para una variable escalar, `.VAR` devuelve su contenedor `Scalar`.

## `^name`

Ahora tienes el contenedor. Puedes preguntar por el nombre de su clase con `.^name`:

```raku
my $var1 = 42;
my $var2 = '42';

say $var1.^name;     # Int
say $var1.VAR.^name; # Scalar

say $var2.^name;     # Str
say $var2.VAR.^name; # Scalar
```

`.^name` sobre la variable devuelve el tipo del _valor_. Es `Int` o `Str`. `.VAR.^name` devuelve el tipo del _contenedor_. En los dos casos, es `Scalar`.

## `default`

El método `default` devuelve el valor por defecto del contenedor. Un contenedor vacío te da este valor. No tiene un valor propio. Puedes poner el valor por defecto tú mismo con el trait `is default`:

```raku
my Str $language is default('Raku');
say $language.VAR.default; # Raku
```

Quizás no pones un valor por defecto. Entonces el valor por defecto es el tipo del contenedor. Un contenedor sin tipo tiene el valor por defecto `Any`. No importa qué valor hay en él ahora:

```raku
my $language = 'Raku';
say $language.VAR.default; # (Any)
```

Para un contenedor con tipo, el valor por defecto es ese tipo:

```raku
my Str $language;
say $language.VAR.default; # (Str)
```

## `name`

El método `name` devuelve el nombre del contenedor, con el sigil:

```raku
my $language;
say $language.VAR.name; # $language
```

No confundas `^name` y `name`. `^name` da el tipo. `name` da el nombre de la variable.

{% include nav.html %}
