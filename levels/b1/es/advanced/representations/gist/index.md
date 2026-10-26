---
title: El método `.gist`
---

{% include menu.html %}

El método `.gist` devuelve una representación **legible para humanos** de un valor. Es la forma que querrías *leer*. `say` y `note` imprimen exactamente esto, porque llaman a `.gist` sobre cada argumento.

```raku
say 42.gist;     # 42
say 'Raku'.gist; # Raku
```

Para valores simples, el gist es simplemente el valor. Para datos compuestos, `.gist` añade algo de formato, para que la estructura sea fácil de leer:

```raku
my @a = 'alpha', 'beta', 'gamma';
say @a.gist; # [alpha beta gamma]
```

Un objeto de tipo es un valor que representa al tipo mismo. Su gist es su nombre entre paréntesis. Esto hace que sea fácil de ver en la salida:

```raku
say Int.gist; # (Int)
```

{% include nav.html %}
