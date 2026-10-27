---
title: Componer varios roles
translations_gpt:
---

{% include menu.html %}

Una clase puede asumir más de un rol. Solo tienes que enumerar cada rol con su propio `does`:

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

La clase `Duck` tiene ahora dos métodos, `move` de `Walk` y `dive` de `Swim`:

```raku
say Duck.new.move; # walking
say Duck.new.dive; # diving
```

Juntar roles así se llama _composición_. Te permite construir una clase a partir de varias piezas separadas de comportamiento. Esto suele ser más flexible que una sola cadena de herencia. Una clase puede mezclar exactamente las capacidades que necesita, y nada más.

{% include nav.html %}
