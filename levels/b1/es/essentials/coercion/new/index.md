---
title: Conversión de tipos usando formas de constructor
---

{% include menu.html %}

Una forma parecida es crear un objeto nuevo del tipo que necesitas. Para hacerlo, llamas a su constructor, que tiene el mismo nombre que el tipo. Por ejemplo:

```raku
my $n = Int('1.23E4');
say $n;      # 12300
say $n.WHAT; # (Int)
```

Aquí, una cadena con un número de punto flotante dentro se convierte en un entero.

{% include nav.html %}
