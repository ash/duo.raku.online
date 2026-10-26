---
title: El método `.gist`
---

{% include menu.html %}

El método `.gist` devuelve una forma **legible para humanos** de un valor. Es la forma que quieres *leer*. `say` imprime exactamente esta forma. `note` también la imprime. Llaman a `.gist` sobre cada argumento.

```raku
say 42.gist;     # 42
say 'Raku'.gist; # Raku
```

Para valores simples, el gist es solo el valor. Algunos datos tienen varias partes. Para esos datos, `.gist` añade un poco de formato. Así puedes leer la estructura con facilidad:

```raku
my @a = 'alpha', 'beta', 'gamma';
say @a.gist; # [alpha beta gamma]
```

Un objeto de tipo es un valor. Representa al tipo mismo. Su gist es el nombre del tipo entre paréntesis. Así lo ves fácilmente en la salida:

```raku
say Int.gist; # (Int)
```

{% include nav.html %}
