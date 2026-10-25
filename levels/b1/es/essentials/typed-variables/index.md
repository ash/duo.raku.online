---
title: Variables tipadas
---

{% include menu.html %}

En Raku, una variable escalar (o un contenedor escalar) guarda un solo objeto. Este objeto puede ser de diferentes tipos. Por ejemplo, la misma variable puede contener primero un número y luego una cadena:

```raku
my $var = 42;
$var = 'Hola';
```

Aquí hay otro ejemplo, que mezcla diferentes tipos de datos en una expresión:

```raku
my $a = '100';
my $b = 200;
say $a + $b; # 300
```

Esto probablemente no es la mejor práctica de programación. Pero es un programa Raku perfectamente correcto.

Sin embargo, Raku te permite elegir qué puede guardar una variable. Encontrarás más detalles en los temas de abajo.

{% include nav.html %}
