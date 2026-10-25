---
title: Concatenación de cadenas
---

{% include menu.html %}

Puedes unir dos cadenas. Así obtienes una cadena nueva y más larga. Lo llamamos concatenación de cadenas. En Raku, concatenas cadenas con un operador. ¿Puedes adivinar su nombre? ¡Es el operador de concatenación! Este operador es una tilde: `~`. Para concatenar dos cadenas, pon `~` entre ellas:

```raku
say 'Hello, ' ~ 'World!';
```

A veces las cadenas están en variables. Entonces podemos ‘concatenar las variables’. Bueno, en realidad concatenamos las cadenas de esas variables:

```raku
my $greeting = 'Hello, ';
my $who = 'World!';

say $greeting ~ $who;
```

También puedes poner el resultado en una nueva variable:

```raku
my $greeting = 'Hello, ';
my $who = 'World!';
my $message = $greeting ~ $who;

say $message;
```

## Concatenación y asignación en un paso

A veces quieres añadir una cadena al final de una variable. Entonces usa esta forma:

```raku
# En lugar de 
$str = $str ~ $another-str;

# usa:
$str ~= $another-str;
```

{% include nav.html %}
