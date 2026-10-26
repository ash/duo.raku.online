---
title: Quiz — Clases
translations_gpt:
---

{% include menu.html %}

¿Qué imprime el programa siguiente? Recuerda que `WHAT` informa del *tipo*. Para saber si un valor es un objeto de tipo o una instancia, necesitas `defined`.

```raku
class Dog {
}

say Dog.WHAT === Dog.new.WHAT;
```

{:.quiz}
0 | False
1 | True
0 | (Dog)
0 | un error

{% include quiz.html %}

{% include nav.html %}
