---
title: Concatenación de cadenas
---

{% include menu.html %}

Si tienes dos cadenas, puedes unirlas y obtener una cadena nueva y más larga. Esto se llama concatenación de cadenas. En Raku, concatenas cadenas con—¿adivinas qué?—el operador de concatenación. Este operador es una tilde, `~`. Para concatenar dos cadenas, pon `~` entre ellas:

```raku
say 'Hello, ' ~ 'World!';
```

Si nuestras cadenas están guardadas en variables, podemos ‘concatenar variables’. Bueno, para ser exactos, concatenamos las cadenas que esas variables guardan:

```raku
my $greeting = 'Hello, ';
my $who = 'World!';

say $greeting ~ $who;
```

O puedes crear una nueva variable que guarde el resultado de la concatenación:

```raku
my $greeting = 'Hello, ';
my $who = 'World!';
my $message = $greeting ~ $who;

say $message;
```

## Concatenación con asignación

Para añadir una nueva cadena al final de una variable, usa esta forma:

```raku
# En lugar de 
$str = $str ~ $another-str;

# usa:
$str ~= $another-str;
```

{% include nav.html %}
