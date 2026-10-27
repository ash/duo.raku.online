---
title: Componer varios roles
translations_gpt:
---

{% include menu.html %}

Una clase puede asumir más de un rol. Solo tienes que escribir `does` antes de cada rol:

```raku
role Walk {
    method move { 'walking' }
}

role Swim {
    method dive { 'diving' }
}

class Duck does Walk does Swim {
}
```

Ahora la clase `Duck` tiene dos métodos. Tiene `move` de `Walk`. Y tiene `dive` de `Swim`:

```raku
say Duck.new.move; # walking
say Duck.new.dive; # diving
```

Esta forma de juntar roles se llama _composición_. Construyes una clase a partir de varias piezas separadas de comportamiento. Esto a menudo te da más libertad que una sola cadena de herencia. Una clase toma exactamente las capacidades que necesita. No toma nada más.

{% include nav.html %}
