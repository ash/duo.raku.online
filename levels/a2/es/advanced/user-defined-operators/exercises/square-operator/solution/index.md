---
title: 'Solution: Un operador de elevar al cuadrado'
translations_gpt:
---

{% include menu.html %}

Aquí hay una forma de resolver la tarea.

## Código

```raku
sub postfix:<²>($x) {
    $x ** 2
}

say 5²;
```

🦋 Puedes encontrar el código fuente en el archivo [square-operator.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/user-defined-operators/square-operator.raku).

## Salida

```
25
```

## Comentarios

1. Declaramos el operador como `postfix:<²>`. Su símbolo es un dos pequeño y elevado. Lo escribes después de su operando, como en `5²`.

1. El cuerpo eleva el operando a la potencia de dos. Así, `5²` da `25`. Puedes usar libremente un símbolo Unicode. Puede verse igual que en matemáticas.

{% include nav.html %}
