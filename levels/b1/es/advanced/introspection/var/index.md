---
title: Usando `VAR`
---

{% include menu.html %}

`VAR` es un pseudo-método que devuelve el objeto contenedor que hay detrás de una variable. Para una variable escalar, una llamada a `.VAR` da el contenedor `Scalar` que hay detrás de ella.

## `^name`

Con el contenedor, puedes preguntar por el nombre de su clase con `.^name`:

```raku
my $var1 = 42;
my $var2 = '42';

say $var1.^name;     # Int
say $var1.VAR.^name; # Scalar

say $var2.^name;     # Str
say $var2.VAR.^name; # Scalar
```

`.^name` sobre la variable da el tipo del _valor_, `Int` o `Str`. Pero `.VAR.^name` da el tipo del _contenedor_, que es `Scalar` en los dos casos.

## `default`

El método `default` devuelve el valor por defecto del contenedor. Es lo que obtienes cuando el contenedor no guarda ningún valor propio. Puedes fijarlo tú mismo con el trait `is default`:

```raku
my Str $language is default('Raku');
say $language.VAR.default; # Raku
```

Si no fijas un valor por defecto, el valor por defecto es el tipo del contenedor. Para un contenedor sin tipo, es `Any`. Su valor actual no importa:

```raku
my $language = 'Raku';
say $language.VAR.default; # (Any)
```

Para un contenedor con tipo, es el tipo de la restricción:

```raku
my Str $language;
say $language.VAR.default; # (Str)
```

## `name`

El método `name` da el nombre del contenedor, junto con su sigil:

```raku
my $language;
say $language.VAR.name; # $language
```

Ten cuidado de no confundir `^name` y `name`. El primero da el tipo, y el segundo da el nombre propio de la variable.

{% include nav.html %}
