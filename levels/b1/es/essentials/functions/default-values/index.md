---
title: Valores predeterminados
---

{% include menu.html %}

Tanto los parámetros posicionales como los nombrados pueden tener valores predeterminados. Si un parámetro tiene un valor predeterminado, puedes omitirlo en la llamada a la función.

## Parámetros posicionales

Aquí tienes un ejemplo de un valor predeterminado para un parámetro posicional:

```raku
sub greet($name = 'World') {
    say "Hello, $name!";
}

greet('Merinda');
greet();
```

En la primera llamada, el nombre es el único argumento, así que el resultado es `Hello, Merinda!`. La segunda llamada usa el valor predeterminado e imprime `Hello, World!`.

Si una función tiene varios parámetros, solo los últimos pueden tener valores predeterminados:

```raku
sub f($a, $b, $c = 42, $d = 50) { . . . } # correcto
# sub f($a = 10, $b = 20, $c, $d) { . . . } # INCORRECTO
```

## Parámetros nombrados

Usas la misma sintaxis para dar valores predeterminados a los parámetros nombrados:

```raku
sub greet(:$name = 'World') {
    say "Hello, $name!";
}

greet(name => 'Merinda'); # Hello, Merinda!
greet(); # Hello, World!
```

El orden de los parámetros nombrados no importa. Así que cualquiera de ellos puede tener un valor predeterminado, incluso el primero:

```raku
sub greet(:$greeting = 'Hello', :$name) {
    say "$greeting, $name!";
}

greet(name => 'Alla'); # Hello, Alla!
```

{% include nav.html %}
