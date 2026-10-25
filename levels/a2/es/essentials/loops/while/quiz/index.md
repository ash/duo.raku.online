---
title: Quiz — el bucle `while`
---

{% include menu.html %}

## 1

¿Qué imprime este programa?

```raku
my $n = 10;
while $n {
    $n--;
}
say $n;
```

{:.quiz-select}
0 | Respuesta: (: 0, 1, −1 :)

## 2

Este programa se ejecuta para siempre. Cambia el código para que se detenga.

{:.quiz-code .fill}
. | my $n = 5;
. | my $a = 10;
. | while $n {
n a | &nbsp;&nbsp;&nbsp;&nbsp;say $␣<span>-</span>-;
. | }

{% include quiz.html %}

{% include nav.html %}
