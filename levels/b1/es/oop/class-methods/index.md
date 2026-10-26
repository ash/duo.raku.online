---
title: Métodos de clase
translations_gpt:
---

{% include menu.html %}

La mayoría de los métodos se llaman sobre un objeto, que es una instancia de una clase. Pero también puedes llamar a un método sobre la clase misma. Es decir, lo llamas sobre el objeto de tipo. A un método así se le suele llamar _método de clase_. Es útil para valores y operaciones que pertenecen a toda la clase. No pertenecen a un objeto concreto.

Defines un método de clase exactamente igual que cualquier otro método:

```raku
class Road {
    method speed-limit { 120 }
}
```

Pero lo llamas sobre el nombre de la clase, no sobre una instancia:

```raku
say Road.speed-limit; # 120
```

De hecho, ya has usado un método de clase sin darle ese nombre. `new` es un método que llamas sobre la clase para crear un objeto nuevo.

Un método de clase no puede usar los atributos de instancia, porque no hay ningún objeto concreto detrás. Así que solo trabaja con información que comparten todos los objetos de la clase. Si el trabajo depende de los datos de un objeto, usa un método ordinario. Llámalo sobre una instancia. Si no depende de ellos, un método de clase es la elección natural.

Los métodos de clase no necesitan una instancia. Aun así, cuando sí tienes un objeto, puedes usar sus datos en ellos:

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

Este programa imprime el resultado que esperarías:

```
The maximum speed on Road 404 is 120
```

Sin un objeto de la clase, una llamada como `say Road.info` daría un error.

{% include nav.html %}
