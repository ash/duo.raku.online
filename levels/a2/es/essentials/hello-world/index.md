---
title: ¡Hola, Mundo!
---

{% include menu.html %}

¡Genial! Ahora sabemos las cosas básicas. Podemos hablar con Raku y ver su respuesta. Así que vamos al primer programa real: '¡Hola, Mundo!'.

```raku
say 'Hello, World!';
```

Pronto vamos a aprender lo básico de las funciones. Pero primero, aquí tienes otras formas de escribir este programa.

Primero, puedes poner el argumento de la función entre paréntesis:

```raku
say('Hello, World!');
```

Segundo, puedes usar otras funciones: `put` y `print`. Otra vez, puedes escribirlas con o sin paréntesis:

```raku
put 'Hello, World!';

print("Hello, World!\n");
```

Con `print`, tienes que añadir tú mismo el carácter de nueva línea. Este carácter empieza una línea nueva. Ponlo al final del mensaje. Pero no te preocupes. Más adelante vemos todos estos detalles.

Antes de seguir, aquí tienes otra forma emocionante. Puedes llamar a la función como un método. Llámala directamente en la cadena:

```raku
'Hello, World!'.say;
```

{% include nav.html %}
