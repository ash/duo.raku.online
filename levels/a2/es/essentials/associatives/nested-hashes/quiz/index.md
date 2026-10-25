---
title: Quiz — Hashes multinivel
---

{% include menu.html %}

Aquí tienes una estructura de datos:

```raku
my %statistics =
    1900 => {
        Jan => 500,
        Feb => 550,
    },
    2000 => {
        Jan => 1230,
        Feb => 1245,
    };
```

¿Qué líneas obtienen bien los datos de febrero de 1900? Elígelas.

{:.quiz}
1 | say %statistics<1900>&lt;Feb&gt;;
1 | say %statistics{1900}&lt;Feb&gt;; | Esto es correcto, ya que `1900` puede ser implícitamente convertido a una cadena.
0 | say %statistics{1900}{Feb}; | Incorrecto, ya que `Feb` debe ser una cadena.
1 | say %statistics{&apos;1900&apos;}{&apos;Feb&apos;};

{% include quiz.html %}

{% include nav.html %}
