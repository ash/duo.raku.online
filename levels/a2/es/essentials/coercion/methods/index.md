---
title: Conversión de tipos usando métodos de coerción de tipos
---

{% include menu.html %}

Puedes convertir un valor a otro tipo. Otra palabra para esto es _coaccionar_. Para hacerlo, llama a un método. Su nombre es el nombre del tipo de dato. Por ejemplo, convierte una cadena en un entero:

```raku
my $howmany = '42';
my $n = $howmany.Int;
say $n;
```

A menudo no necesitas convertir valores tú mismo. Raku lo hace por ti. Este código funciona correctamente y como esperas:

```raku
my $a = '10';
my $b = '20';
my $c = $a + $b;
say "The result is $c."; # The result is 30.
```

Las dos variables, `$a` y `$b`, contienen cadenas. Pero la expresión las suma con `+`. Así que aquí Raku convierte las dos cadenas en enteros. Luego `$c` también recibe un entero. En la última línea, Raku interpola esta variable en una cadena. Para esto, Raku convierte el número en caracteres de dígitos.

{% include nav.html %}
