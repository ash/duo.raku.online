---
title: run y shell
translations_gpt:
---

{% include menu.html %}

Hay dos formas de iniciar un programa externo. La función `run` toma la orden y sus argumentos como valores **separados**. Ejecuta el programa directamente, sin una shell:

```raku
run 'echo', 'hello';
```

Esto ejecuta el programa `echo` con el único argumento `hello`, así que imprime `hello`. Los argumentos se pasan por separado, así que una shell no puede leer mal los espacios o los caracteres especiales. Por eso `run` es la opción segura por defecto.

La función `shell` funciona de otra manera. Pasa una **única cadena** a la shell del sistema, que la lee y la ejecuta. Esto te permite usar funcionalidades de la shell como las tuberías y la redirección:

```raku
shell 'echo hello | tr a-z A-Z';
```

Aquí, la shell ejecuta `echo` y envía su salida a través de `tr` con una tubería. Después imprime `HELLO`. Esto es cómodo, pero debes tener cuidado. La shell misma decide qué significa la cadena. Así que es peligroso construir una orden `shell` a partir de una entrada en la que no confías. Usa `run` a menos que de verdad necesites funcionalidades de la shell.

Las dos funciones devuelven un objeto `Proc`, que describe cómo terminó el programa. Por defecto, el programa iniciado comparte la salida de tu programa. Así que lo que imprime aparece en la pantalla. Para capturar esa salida, tienes que pedirla. De eso trata el tema siguiente.

{% include nav.html %}
