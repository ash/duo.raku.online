---
title: Variables tipadas
---

{% include menu.html %}

En Raku, una variable escalar, o contenedor escalar, guarda un objeto. Este objeto puede ser de diferentes tipos. Por ejemplo, la misma variable puede contener primero un número. Luego puede contener una cadena:

```raku
my $var = 42;
$var = 'Hola';
```

Aquí hay otro ejemplo. Una expresión tiene diferentes tipos de datos:

```raku
my $a = '100';
my $b = 200;
say $a + $b; # 300
```

Esta probablemente no es una buena forma de escribir código. Pero es un programa Raku totalmente correcto.

Pero Raku también te deja decir qué puede guardar una variable. Los temas de abajo te cuentan más.

{% include nav.html %}
