---
title: ¡Hola, Mundo!
---

{% include menu.html %}

Genial, ya hemos aprendido lo básico. Ahora podemos hablar con Raku y ver su respuesta. Así que vamos directamente al primer programa real, '¡Hola, Mundo!'.

```raku
say 'Hello, World!';
```

Pronto aprenderemos lo básico de las funciones. Pero primero, veamos algunas opciones diferentes para este programa.

Antes que nada, puedes poner el argumento de la función entre paréntesis:

```raku
say('Hello, World!');
```

En segundo lugar, puedes usar otras dos funciones, `put` y `print`. De nuevo, puedes escribirlas con o sin paréntesis:

```raku
put 'Hello, World!';

print("Hello, World!\n");
```

Observa que con `print` tienes que añadir tú mismo el carácter de nueva línea. Va al final del mensaje. Pero no te preocupes, veremos todos estos detalles más adelante.

Antes de continuar, aquí tienes otra opción emocionante. Puedes llamar a una función como un método, directamente en la cadena:

```raku
'Hello, World!'.say;
```

{% include nav.html %}
