---
title: Usar el convertidor
translations_gpt:
---

{% include menu.html %}

## Problema

Aquí tienes un módulo en el archivo `Temperature.rakumod`:

```raku
unit module Temperature;

sub c-to-f($c) is export {
    $c * 9/5 + 32
}
```

Escribe un programa separado. El programa usa este módulo. Recibe una temperatura en Celsius como argumento de línea de comandos. Cambia la temperatura a Fahrenheit con el módulo. Luego imprime el resultado.

## Ejemplo

```console
$ raku -I. temperature.raku 100
212
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
