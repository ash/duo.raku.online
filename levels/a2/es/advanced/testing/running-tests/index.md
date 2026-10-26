---
title: Ejecutar pruebas
translations_gpt: true
---

{% include menu.html %}

Un archivo de pruebas es solo un programa Raku. Así que puedes ejecutarlo como cualquier programa:

```
raku t/01-basic.rakutest
```

Imprime su salida TAP en la pantalla. Pero a lo mejor tienes más de uno o dos archivos. Entonces necesitas un _ejecutor de pruebas_. Ejecuta todas las pruebas de un directorio. Luego da un resumen corto de los resultados. El ejecutor de pruebas de Raku es `prove6`:

```
prove6 t/
```

Esto ejecuta cada archivo de pruebas de `t/`. Muestra cuántos archivos y pruebas pasaron. Al final, da un resultado para todo: aprobado o fallido. Esto es mucho más fácil de leer que el TAP en bruto de cada archivo.

Una distribución puede tener un `META6.json`. Entonces la herramienta de módulos ejecuta sus pruebas por ti:

```
zef test .
```

`zef test` encuentra el directorio `t/`. Ejecuta todas las pruebas y muestra el resultado. Lo mismo pasa automáticamente antes de que alguien instale una distribución. Así que las pruebas tienen dos trabajos. Tú las ejecutas con `prove6` mientras trabajas en tu código. Y el ecosistema las ejecuta antes de que alguien instale una distribución. De esta forma, comprueba la distribución.

> Los archivos de pruebas tienen la extensión `.rakutest` o `.t`. Normalmente, sus nombres empiezan con un número, por ejemplo, `t/01-basic.rakutest`.

{% include nav.html %}
