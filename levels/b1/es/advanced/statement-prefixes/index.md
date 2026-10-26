---
title: Prefijos de sentencia
translations_gpt:
---

{% include menu.html %}

Un _prefijo de sentencia_ es una palabra clave que pones delante de una sentencia o bloque. Cambia la forma en que se ejecuta el código. Ya has visto uno: `gather`, que recoge todo lo que un bloque da a `take`. Esta sección muestra algunos prefijos más para uso general.

Con los prefijos puedes hacer varias cosas. Puedes convertir un bloque en una expresión que da un valor (`do`). Puedes decidir cuándo se calcula una lista: enseguida o cuando se pide (`eager` y `lazy`). Y puedes ejecutar código solo por sus efectos secundarios (`sink`). O puedes ejecutarlo con sus advertencias apagadas (`quietly`).

{% include nav.html %}
