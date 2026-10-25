---
title: Conversión de tipos con operadores prefijo
---

{% include menu.html %}

También puedes cambiar el tipo de un objeto con operadores prefijos. Cada uno de estos operadores es solo un carácter. Lo pones justo antes de un valor o de una variable.

`~` | Convierte a cadena
`+` | Convierte a número
`?` | Convierte a valor booleano

Aquí hay un ejemplo. Crea un valor booleano a partir de un entero:

```raku
say ?42; # True
```

Convertir a cadena funciona de la misma forma:

```raku
my $n = -30;
my $s = ~$n;
say $s.chars; # 3, ya que "-30" tiene 3 caracteres
```

Fíjate en esto al convertir a número. El tipo del resultado puede ser diferente. Depende del número. Compara estas conversiones desde cadenas:

```raku
say (+'100').WHAT;   # (Int)
say (+'3.14').WHAT;  # (Rat)
say (+'27E-1').WHAT; # (Num)
```

Para convertir a valor booleano, también puedes usar `so`. Puedes usarlo como operador prefijo. O puedes usarlo como método:

```raku
my $value = 42;
say so $value; # True
say $value.so; # True
```

{% include nav.html %}
