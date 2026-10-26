---
title: Ejecutar pruebas
translations_gpt: true
---

{% include menu.html %}

Un solo archivo de pruebas es simplemente un programa Raku. Así que puedes ejecutarlo directamente:

```
raku t/01-basic.rakutest
```

Imprime su salida TAP en la pantalla. Cuando tienes más de uno o dos archivos, necesitas un _ejecutor de pruebas_. Ejecuta un directorio entero de pruebas y da un resumen de los resultados. El ejecutor de Raku es `prove6`:

```
prove6 t/
```

Esto ejecuta cada archivo de pruebas de `t/` e informa de cuántos archivos y pruebas pasaron. Al final, hay un resultado global, aprobado o fallido. Esto es mucho más fácil de leer que el TAP en bruto de cada archivo.

Si una distribución tiene un `META6.json`, la herramienta de módulos puede ejecutar sus pruebas por ti:

```
zef test .
```

`zef test` encuentra el directorio `t/`, ejecuta las pruebas e informa del resultado. Exactamente lo mismo pasa automáticamente antes de instalar una distribución. Así que las pruebas tienen dos trabajos. Tú las ejecutas con `prove6` mientras desarrollas. El ecosistema las ejecuta para comprobar una distribución antes de que alguien la instale.

> Los archivos de pruebas tienen la extensión `.rakutest` (o `.t`). Normalmente llevan números en el nombre, como en `t/01-basic.rakutest`.

{% include nav.html %}
