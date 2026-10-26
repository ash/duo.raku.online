---
title: Subrutinas anidadas
translations_gpt:
---

{% include menu.html %}

Puedes definir una subrutina _dentro_ de otra subrutina. Esto es una subrutina anidada. Es una subrutina normal. Pero solo puedes verla y usarla dentro de la subrutina exterior.

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

Aquí, creamos `inner` dentro de `outer`. Después, `outer` la llama. Esto funciona. El nombre `inner` existe en todo el cuerpo de `outer`.

Pero fuera de `outer`, el nombre `inner` no existe. Este programa no compila:

```raku
sub outer {
    sub inner { 42 }
}

inner; # error: Undeclared routine: inner
```

A veces solo una subrutina necesita una rutina auxiliar. Entonces anidar es útil. Pon la rutina auxiliar dentro de esa subrutina. Esto muestra que la rutina auxiliar es privada. Además, ningún otro código puede llamarla por error.

{% include nav.html %}
