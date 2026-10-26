---
title: Métodos de clase
translations_gpt:
---

{% include menu.html %}

Llamas a la mayoría de los métodos sobre un objeto. Un objeto es una instancia de una clase. Pero también puedes llamar a un método sobre la clase misma. Esto significa que lo llamas sobre el objeto de tipo. Un método así se llama a menudo _método de clase_. Es útil para valores y acciones de toda la clase. Estos valores y acciones no son de un solo objeto.

Escribes un método de clase como cualquier otro método:

```raku
class Road {
    method speed-limit { 120 }
}
```

Pero lo llamas sobre el nombre de la clase. No lo llamas sobre una instancia:

```raku
say Road.speed-limit; # 120
```

Ya conoces un método de clase. Pero no le diste ese nombre. Es `new`. Llamas a `new` sobre la clase, y crea un objeto nuevo.

Un método de clase no puede usar los atributos de una instancia. No hay ningún objeto detrás. Así que solo puede trabajar con información común. Esta información es igual para todos los objetos de la clase. A veces el trabajo necesita los datos de un objeto. Entonces usa un método normal, y llámalo sobre una instancia. A veces el trabajo no necesita esos datos. Entonces un método de clase es una buena elección.

Los métodos de clase no necesitan una instancia. Pero a veces tienes un objeto. Entonces también puedes usar sus datos en ellos:

```raku
class Road {
    has $.name;
    method speed-limit { 120 }

    method info {
        "The maximum speed on $.name is " ~ self.speed-limit
    }
}

my $R404 = Road.new(name => 'Road 404');
say $R404.info;
```

Este programa imprime el resultado que esperas:

```
The maximum speed on Road 404 is 120
```

Aquí necesitas una instancia de la clase. Sin ella, una llamada como `say Road.info` da un error.

{% include nav.html %}
