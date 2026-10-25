---
title: '`print`'
---

{% include menu.html %}

La rutina incorporada `print` hace dos cosas:

1. Convierte sus argumentos a una cadena. Para esto, llama al método `Str` en ellos.
1. Envía la cadena al flujo `STDOUT`.

Con tipos de datos simples, `print` funciona como [`say`](../say). Pero no añade un carácter de nueva línea al final.

```raku
print 42;
print 'Raku';
```

El programa imprime los valores uno tras otro. Además, no hay una nueva línea al final de toda la salida.

```console
$ raku t.raku
42Raku
```

Algunos tipos de datos guardan muchos valores. Con ellos, `print` y `say` pueden dar resultados diferentes. Prueba con arrays y hashes, por ejemplo:

```raku
my @data = 'alpha', 'beta', 'gamma';
print @data;

print "\n"; # Para separar las partes

my %data = alpha => 1, beta => 2, gamma => 3;
print %data;
```

Aquí está la salida:

```console
$ raku t.raku
alpha beta gamma
alpha	1
beta	2
gamma	3
```

También puedes llamar a `print` como un método:

```raku
my @data = 'alpha', 'beta', 'gamma';
@data.print;

"\n".print;
```

{% include nav.html %}
