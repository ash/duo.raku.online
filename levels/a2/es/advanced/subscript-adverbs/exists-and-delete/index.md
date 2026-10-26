---
title: Exists y delete
---

{% include menu.html %}

El adverbio `:exists` convierte un subíndice en una pregunta. ¿Hay un valor en esta clave o índice? La respuesta es `True` o `False`. El adverbio no obtiene el valor:

```raku
my %h = apple => 1, pear => 2;

say %h<apple>:exists; # True
say %h<plum>:exists;  # False
```

Esta es la forma correcta de comprobar una clave. También puedes simplemente leer `%h<plum>`. Pero entonces obtienes un valor indefinido. O, con algunos datos, no puedes ver la diferencia. ¿Está la clave “ausente”? ¿O está “presente pero indefinida”?

El adverbio `:delete` elimina la entrada. Devuelve el valor de la entrada:

```raku
my %h = apple => 1, pear => 2;

say %h<apple>:delete; # 1
say %h.keys;          # (pear)
say %h;               # {pear => 2}
```

La entrada `apple` ya no está. Recibes su valor `1`. Puedes usar este valor.

Los dos adverbios también funcionan con arrays. Allí usas un índice:

```raku
my @a = 10, 20, 30;

say @a[1]:exists; # True
say @a[5]:exists; # False

say @a[1]:delete; # 20
say @a[1]:exists; # False
```

Eliminas un elemento del medio. ¿Cómo queda entonces el array? Aquí está la respuesta:

```raku
say @a; # [10 (Any) 30]
```

Así que usas una sola notación, y siempre funciona igual. Con ella, puedes preguntar sobre un contenedor. También puedes cambiar el contenedor en su lugar. No necesitas métodos separados para esto.

{% include nav.html %}
