---
title: Conversión de tipos usando formas de constructor
---

{% include menu.html %}

Hay una forma parecida. Puedes crear un objeto nuevo del tipo que necesitas. Para esto, llama al constructor del tipo. Un constructor crea objetos nuevos. Su nombre es el mismo que el nombre del tipo. Por ejemplo:

```raku
my $n = Int('1.23E4');
say $n;      # 12300
say $n.WHAT; # (Int)
```

Aquí, la cadena tiene dentro un número de punto flotante. Raku la convierte en un entero.

{% include nav.html %}
