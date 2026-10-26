---
title: Quiz — Clases
translations_gpt:
---

{% include menu.html %}

¿Qué imprime este programa? Recuerda que `WHAT` muestra el *tipo*. Pero `defined` muestra otra cosa. ¿El valor es un objeto de tipo o una instancia?

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
