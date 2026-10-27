---
title: Quiz — Borrar archivos
translations_gpt:
---

{% include menu.html %}

¿Qué imprime este programa?

```raku
mkdir 'data';
spurt 'data/x.txt', 'hi';
rmdir 'data';
say 'data'.IO.e;
```

{:.quiz}
1 | True
0 | False
0 | un error
0 | Nil

{% include quiz.html %}

<div class="extended-explanation">

`rmdir` solo elimina un directorio **vacío**. Aquí, `data` todavía tiene `x.txt` dentro. Así que `rmdir` no elimina nada. El directorio se queda en su sitio. Por eso `.e` todavía da `True`. ¿Cómo puedes borrar el directorio? Primero, elimina todo lo que hay dentro, por ejemplo con `.unlink for 'data'.IO.dir`. Después llama a `rmdir`.

</div>

{% include nav.html %}
