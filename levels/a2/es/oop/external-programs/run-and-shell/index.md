---
title: run y shell
translations_gpt:
---

{% include menu.html %}

Hay dos formas de iniciar un programa externo. La primera es la función `run`. No usa una shell. Una shell es un programa que lee órdenes y las ejecuta. `run` toma la orden y sus argumentos como valores **separados**. Los argumentos son los valores que das a la orden. Después `run` inicia el programa directamente:

```raku
run 'echo', 'hello';
```

Esto ejecuta el programa `echo` con un argumento, `hello`. El programa imprime `hello`. Los argumentos llegan al programa por separado. Así que ninguna shell puede entender mal los espacios o los caracteres especiales. Por eso `run` es la opción segura por defecto.

La función `shell` funciona de otra forma. Da una **única cadena** a la shell del sistema. La shell lee la cadena y la ejecuta. Así puedes usar herramientas de la shell, como la redirección y las tuberías. La redirección envía la salida a otro lugar, por ejemplo a un archivo. Una tubería envía la salida de una orden a la siguiente:

```raku
shell 'echo hello | tr a-z A-Z';
```

Aquí, la shell ejecuta `echo`. Una tubería envía su salida a `tr`. Después la shell imprime `HELLO`. Esto es fácil, pero hay un riesgo. La shell misma lee la cadena y encuentra sus partes. A lo mejor la cadena viene de una entrada en la que no confías. Entonces una orden `shell` es peligrosa. Usa `run`, a menos que de verdad necesites herramientas de la shell.

Las dos funciones devuelven un objeto `Proc`. Te dice cómo terminó el programa. Normalmente, el programa iniciado usa la misma salida que tu programa. Así que ves su salida en la pantalla. También puedes capturar esta salida. Para eso, tienes que pedirla. El tema siguiente muestra cómo.

{% include nav.html %}
