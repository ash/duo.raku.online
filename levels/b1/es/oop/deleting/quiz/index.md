---
title: Quiz — Borrar archivos
translations_gpt:
---

{% include menu.html %}

¿Qué imprime el programa siguiente?

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

`rmdir` solo elimina un directorio **vacío**. Aquí, `data` todavía contiene `x.txt`, así que `rmdir` no elimina nada. El directorio se queda donde está, y `.e` sigue dando `True`. Para borrar el directorio, primero tendrías que eliminar su contenido, por ejemplo con `.unlink for 'data'.IO.dir`. Después tendrías que llamar a `rmdir`.

</div>

{% include nav.html %}
