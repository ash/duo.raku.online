---
title: 'Quiz: Operaciones booleanas'
---

{% include menu.html %}

En cada sección de abajo, selecciona la respuesta que muestra lo que imprime el programa.

## 1

Aquí está el programa:

```raku
my $value = True && False;
say $value;
```

¿Qué imprime?

{:.quiz}
0 | True
1 | False

## 2 

¿Qué imprime el segundo programa?

```raku
my $value = True && False || True;
say $value;
```

{:.quiz}
1 | True
0 | False

## 3

¿Cuál es la salida de este programa?

```raku
my $value = True || False && True;
say $value;
```

{:.quiz}
1 | True
0 | False

{% include quiz.html %}

## Comentarios

El segundo y el tercer programa tienen expresiones con tres valores booleanos. El resultado depende del orden en que Raku hace las operaciones. El operador `&&` tiene una precedencia más alta que `||`, así que Raku lo hace primero.

{% include nav.html %}
