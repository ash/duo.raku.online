---
title: Salida con `say`
---

{% include menu.html %}

La función `say` imprime valores en el flujo de salida estándar, `STDOUT`. La gente también la llama subrutina, o simplemente rutina. ¿Ejecutas el programa en una terminal? Entonces ves la salida allí. ¿Usas un servicio en línea? Entonces la salida va a una parte especial de la página web.

Aquí hay un ejemplo de uso de `say`:

```raku
say 42;
```

Esta línea puede ser parte de un programa más grande. También puede ser el programa completo. Por supuesto, imprime `42` en la salida.

Ahora probemos con una cadena:

```raku
say 'Hello, World!';
```

¡Bien! Ahora `Hello, World!` está en la pantalla.

La rutina `say` puede tomar más de un argumento. Así que podemos imprimir varios valores a la vez:

```raku
say 42, 'Hello, World!';
```

Pero mira la salida. Sus partes forman una sola cadena: `42Hello, World!`. Así que es mejor agregar un espacio entre ellas. Ya puedes resolver este problema. Por ejemplo, así:

```raku
say 42, ' ', 'Hello, World!';
```

La rutina `say` imprime todos los argumentos. Después agrega un carácter de nueva línea a la salida.

{% include nav.html %}
