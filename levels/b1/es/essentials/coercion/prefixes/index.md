---
title: Conversión de tipos con operadores prefijo
---

{% include menu.html %}

Otra forma de cambiar el tipo de un objeto es usar operadores prefijos. Son operadores de un solo carácter. Los pones justo antes del valor (o de una variable).

`~` | Coerción a cadena
`+` | Coerción numérica
`?` | Coerción booleana

Aquí hay un ejemplo que crea un valor booleano a partir de un entero:

```raku
say ?42; # True
```

Convertir a una cadena es similar:

```raku
my $n = -30;
my $s = ~$n;
say $s.chars; # 3, ya que "-30" tiene 3 caracteres
```

Observa que, en la conversión numérica, el tipo del resultado depende del número. Compara las siguientes conversiones desde cadenas:

```raku
say (+'100').WHAT;   # (Int)
say (+'3.14').WHAT;  # (Rat)
say (+'27E-1').WHAT; # (Num)
```

Para convertir a valor booleano, también puedes usar una rutina llamada `so`. Funciona como operador prefijo o como método:

```raku
my $value = 42;
say so $value; # True
say $value.so; # True
```

{% include nav.html %}
