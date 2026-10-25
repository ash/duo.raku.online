---
title: Conversión de tipos usando métodos de coerción de tipos
---

{% include menu.html %}

Para convertir, o _coaccionar_, un valor a otro tipo, llama a un método. El método tiene el mismo nombre que el tipo de dato. Por ejemplo, convierte una cadena en un número entero:

```raku
my $howmany = '42';
my $n = $howmany.Int;
say $n;
```

En muchos casos, no necesitas convertir valores tú mismo. Raku hace ese trabajo por ti. El siguiente código funciona correctamente y como esperarías:

```raku
my $a = '10';
my $b = '20';
my $c = $a + $b;
say "The result is $c."; # The result is 30.
```

Las variables `$a` y `$b` contienen cadenas. Pero se usan en un cálculo con `+`. En este punto, las dos cadenas se convierten en enteros, así que `$c` también recibe un entero. En la última línea, la variable con el entero se interpola en una cadena. Raku hace lo necesario para mostrar el número como caracteres de dígitos.

{% include nav.html %}
