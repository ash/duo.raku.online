---
title: 'Solution: Una variable our'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
package Config {
    our $port = 8080;
    my  $secret = 42;
}

say $Config::port;
say $Config::secret.defined;
```

🦋 Puedes encontrar el código fuente en el archivo [our-variable.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/packages/our-variable.raku).

## Salida

```
8080
False
```

## Comentarios

1. `our $port` es parte del espacio de nombres `Config`. Así que puedes obtenerla desde fuera como `$Config::port`. Esto imprime `8080`.

1. `my $secret` es léxica. Es privada para el bloque del paquete. Así que no está en el espacio de nombres. La ruta `$Config::secret` no encuentra nada. Da un valor indefinido. Así que `.defined` es `False`. Esta es la diferencia que marca `our`.

{% include nav.html %}
