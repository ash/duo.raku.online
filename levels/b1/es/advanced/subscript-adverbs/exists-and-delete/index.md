---
title: Exists y delete
---

{% include menu.html %}

El adverbio `:exists` convierte un subíndice en una pregunta. ¿Hay un valor en esta clave o índice? El adverbio devuelve un valor booleano, pero no obtiene el valor mismo:

```raku
my %h = apple => 1, pear => 2;

say %h<apple>:exists; # True
say %h<plum>:exists;  # False
```

Esta es la forma correcta de comprobar una clave. Si solo lees `%h<plum>`, obtienes un valor indefinido. Según los datos, esto puede ocultar la diferencia entre “ausente” y “presente pero indefinido”.

El adverbio `:delete` elimina la entrada y te devuelve su valor:

```raku
my %h = apple => 1, pear => 2;

say %h<apple>:delete; # 1
say %h.keys;          # (pear)
say %h;               # {pear => 2}
```

La entrada `apple` ha desaparecido. Recibes de vuelta el valor eliminado `1`, así que puedes usarlo.

Los dos adverbios también funcionan con arrays, con un índice:

```raku
my @a = 10, 20, 30;

say @a[1]:exists; # True
say @a[5]:exists; # False

say @a[1]:delete; # 20
say @a[1]:exists; # False
```

¿Cómo queda el array después de eliminar un elemento del medio? Aquí está la respuesta:

```raku
say @a; # [10 (Any) 30]
```

Así, una sola notación coherente te permite consultar y cambiar contenedores en su lugar. No necesitas métodos separados para esto.

{% include nav.html %}
