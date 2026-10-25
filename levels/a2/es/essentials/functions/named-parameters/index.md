---
title: Parámetros nombrados
---

{% include menu.html %}

Los parámetros _nombrados_ no son como los [parámetros posicionales](../positional-parameters). En una llamada, escribes sus nombres.

Esta función toma dos parámetros. Sus nombres son `$from` y `$to`.

```raku
sub distance(:$from, :$to) { $from - $to }
```

Para llamar a la función, escribe el nombre de cada argumento:

```raku
say distance(from => 30, to => 10); # 20
```

No pases los argumentos como posicionales. Esto es un error. Por ejemplo, la llamada `distance(30, 10)` da un error:

    Too many positionals passed; expected 0 arguments but got 2
        in sub distance at t.raku line 1
        in block <unit> at t.raku line 2

Aquí está la parte buena. Puedes escribir los argumentos nombrados en cualquier orden. Estas dos llamadas hacen exactamente lo mismo:

```raku
say distance(from => 30, to => 10); # 20

say distance(to => 10, from => 30); # 20
```

## Pasando variables

A veces quieres pasar un valor desde una variable. La variable tiene el mismo nombre que el parámetro. Entonces te ayuda una sintaxis especial. Con ella escribes menos:

```raku
my $from = 30;
my $to = 10;
say distance(:$from, :$to); # 20
```

Esta llamada hace lo mismo que una más larga:

```raku
say distance(from => $from, to => $to); # 20
```

Otra vez, el orden no importa:

```raku
say distance(:$to, :$from); # 20
```

A veces la variable y el parámetro tienen nombres diferentes. Entonces pasa un par de una de estas formas:

```raku
my $a = 20;
my $b = 10;

say distance(from => $a, to => $b);

# o:

say distance(:from($a), :to($b));
```

{% include nav.html %}
