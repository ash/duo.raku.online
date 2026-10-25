---
title: '`print`'
---

{% include menu.html %}

Esto es lo que hace la rutina incorporada `print`:

1. Llama al método `Str` en sus argumentos para convertirlos a una cadena.
1. Envía la cadena al flujo `STDOUT`.

Para tipos de datos simples, `print` da casi la misma salida que [`say`](../say). Solo que no tiene el carácter de nueva línea al final.

```raku
print 42;
print 'Raku';
```

Los dos valores se imprimen justo uno después del otro. Toda la salida tampoco termina con una nueva línea.

```console
$ raku t.raku
42Raku
```

Con datos que guardan varios valores, el resultado puede ser diferente al de `say`. Por ejemplo, prueba con arrays y hashes:

```raku
my @data = 'alpha', 'beta', 'gamma';
print @data;

print "\n"; # Para separar las partes

my %data = alpha => 1, beta => 2, gamma => 3;
print %data;
```

Así es como se ve la salida:

```console
$ raku t.raku
alpha beta gamma
alpha	1
beta	2
gamma	3
```

También puedes llamar a la rutina `print` como un método:

```raku
my @data = 'alpha', 'beta', 'gamma';
@data.print;

"\n".print;
```

{% include nav.html %}
