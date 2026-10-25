---
title: Valores predeterminados
---

{% include menu.html %}

Los parámetros posicionales y nombrados pueden tener valores predeterminados. Un parámetro con valor predeterminado no es obligatorio. Puedes omitirlo cuando llamas a la función. Entonces el parámetro recibe su valor predeterminado.

## Parámetros posicionales

Aquí tienes un ejemplo. La función tiene un parámetro posicional con un valor predeterminado:

```raku
sub greet($name = 'World') {
    say "Hello, $name!";
}

greet('Merinda');
greet();
```

La primera llamada pasa un nombre como único argumento. Por eso imprime `Hello, Merinda!`. La segunda llamada usa el valor predeterminado. Imprime `Hello, World!`.

A veces una función tiene más de un parámetro. Entonces los valores predeterminados deben estar al final de la lista:

```raku
sub f($a, $b, $c = 42, $d = 50) { . . . } # correcto
# sub f($a = 10, $b = 20, $c, $d) { . . . } # INCORRECTO
```

## Parámetros nombrados

Los parámetros nombrados reciben valores predeterminados de la misma forma:

```raku
sub greet(:$name = 'World') {
    say "Hello, $name!";
}

greet(name => 'Merinda'); # Hello, Merinda!
greet(); # Hello, World!
```

El orden de los parámetros nombrados no importa. Así que cualquiera de ellos puede tener un valor predeterminado. Incluso el primero de la lista puede tenerlo:

```raku
sub greet(:$greeting = 'Hello', :$name) {
    say "$greeting, $name!";
}

greet(name => 'Alla'); # Hello, Alla!
```

{% include nav.html %}
