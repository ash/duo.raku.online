---
title: 'Quiz: Operaciones booleanas'
---

{% include menu.html %}

Abajo hay algunos programas. ¿Qué imprime cada programa? Elige la respuesta correcta.

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

¿Qué imprime este programa?

```raku
my $value = True || False && True;
say $value;
```

{:.quiz}
1 | True
0 | False

{% include quiz.html %}

## Comentarios

El segundo y el tercer programa tienen expresiones con tres valores booleanos. El resultado depende del orden de las operaciones. El operador `&&` tiene una precedencia más alta que `||`. Así que Raku hace `&&` primero.

{% include nav.html %}
