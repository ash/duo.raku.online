---
title: Subrutinas anidadas
translations_gpt:
---

{% include menu.html %}

Una subrutina puede definirse _dentro_ de otra subrutina. Una subrutina anidada así es una subrutina normal. Pero solo es visible dentro de la subrutina que la contiene.

```raku
sub outer {
    sub inner {
        say 'I am the inner subroutine';
    }

    inner;
}

outer;
```

El programa imprime:

```
I am the inner subroutine
```

Aquí, `inner` se declara dentro de `outer`, y `outer` la llama. Esto funciona porque puedes usar `inner` en cualquier parte del cuerpo de `outer`.

Pero fuera de `outer`, no hay ningún nombre `inner`. Así que el siguiente programa no compila:

```raku
sub outer {
    sub inner { 42 }
}

inner; # error: Undeclared routine: inner
```

Anidar es útil cuando solo una subrutina necesita una rutina auxiliar. Si la guardas dentro, queda claro que es un detalle privado. Además, nadie puede llamarla desde otro lugar por error.

{% include nav.html %}
