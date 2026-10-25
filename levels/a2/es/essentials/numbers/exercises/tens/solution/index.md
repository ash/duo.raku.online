---
title: 'Solution: Número de decenas'
---

{% include menu.html %}

Así es como puedes resolver la tarea.

## Código

```raku
my $n = prompt 'Introduce un número entero positivo: ';

say ($n % 100) div 10;
```

🦋 Puedes encontrar el código completo en el archivo [tens.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/tens.raku).

## Salida

Ejecuta el programa. Pruébalo con algunos casos diferentes:

* Un número redondo con tres dígitos, por ejemplo, 120;
* Un número que se divide entre 100 sin resto, por ejemplo, 400;
* Un número mayor que 10 pero menor que 100;
* Un número menor que 10.

Para el número 234, el programa imprime esto:

```console
$ raku exercises/numbers/tens.raku
Introduce un número entero positivo: 234
3
```

## Comentarios

Otra vez, esta solución usa dos operadores juntos: el módulo `%` y la división entera `div`.

Mira el espacio antes del paréntesis de apertura. Tiene que estar ahí. Sin él, tienes un error de sintaxis. Volvemos a [esta característica](/es/essentials/more-on-functions/mind-the-space) de Raku en la sección sobre funciones. Por ahora, escribe el código como lo ves arriba. O añade otro par de paréntesis. Ponlos alrededor del argumento de la función. Entonces no necesitas un espacio:

```raku
    say(($n % 100) div 10);
```

{% include nav.html %}
