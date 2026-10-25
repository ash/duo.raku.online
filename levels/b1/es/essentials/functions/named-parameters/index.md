---
title: Parámetros nombrados
---

{% include menu.html %}

A diferencia de los [parámetros posicionales](../positional-parameters), los parámetros _nombrados_ se identifican por sus nombres.

Esta función tiene dos parámetros llamados `$from` y `$to`.

```raku
sub distance(:$from, :$to) { $from - $to }
```

Para llamar a esta función, debes escribir los nombres de los argumentos:

```raku
say distance(from => 30, to => 10); # 20
```

Si pasas los argumentos como si fueran posicionales, obtienes un error. Por ejemplo, la llamada `distance(30, 10)` causa un error:

    Too many positionals passed; expected 0 arguments but got 2
        in sub distance at t.raku line 1
        in block <unit> at t.raku line 2

Lo bueno es que puedes escribir los argumentos nombrados en cualquier orden. Las dos llamadas siguientes son exactamente iguales:

```raku
say distance(from => 30, to => 10); # 20

say distance(to => 10, from => 30); # 20
```

## Pasando variables

A veces el valor que quieres pasar está guardado en una variable. Además, la variable puede tener el mismo nombre que el parámetro. Entonces puedes disfrutar de una sintaxis especial que te ahorra escribir:

```raku
my $from = 30;
my $to = 10;
say distance(:$from, :$to); # 20
```

Esto es similar a una llamada más larga:

```raku
say distance(from => $from, to => $to); # 20
```

De nuevo, aquí el orden no importa:

```raku
say distance(:$to, :$from); # 20
```

Si los nombres de la variable y del parámetro son diferentes, pasa un par. Usa una de estas formas:

```raku
my $a = 20;
my $b = 10;

say distance(from => $a, to => $b);

# o:

say distance(:from($a), :to($b));
```

{% include nav.html %}
