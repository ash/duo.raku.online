---
title: Salida con `say`
---

{% include menu.html %}

La función `say` imprime valores en el flujo de salida estándar, `STDOUT`. También se la llama subrutina, o simplemente rutina. Si ejecutas el programa desde una terminal, la salida aparece allí. Con los servicios en línea, va a un área especial de la página web.

Aquí hay un ejemplo de uso de `say`:

```raku
say 42;
```

Esta línea puede ser parte de un programa más grande o el programa completo. Por supuesto, imprime `42` en la salida.

Trabajemos ahora con cadenas:

```raku
say 'Hello, World!';
```

Y ahí está: `Hello, World!` en la pantalla.

`say` puede tomar varios argumentos, así que podemos imprimir más valores de una vez:

```raku
say 42, 'Hello, World!';
```

Solo ten en cuenta que las partes se unen en una sola cadena: `42Hello, World!`. Así que es mejor agregar un espacio entre ellas. Ya deberías poder resolver este problema. Por ejemplo, así:

```raku
say 42, ' ', 'Hello, World!';
```

Después de todos los argumentos, `say` agrega un carácter de nueva línea a la salida.

{% include nav.html %}
