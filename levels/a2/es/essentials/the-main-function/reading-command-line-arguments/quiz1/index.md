---
title: Quiz — Lectura de argumentos de línea de comandos
---

{% include menu.html %}

Aquí está el programa:

```raku
sub MAIN($a) {
    say $a;
}
```

## 1

Ejecutas el programa así. ¿Qué imprime?

```console
$ raku t.raku 123
```

{:.quiz-code .nocode}
123 | Introduce el resultado esperado: ␣␣␣␣␣␣␣

## 2

¿Qué imprime ahora?

```console
$ raku t.raku "123 456"
```

{:.quiz-code .nocode}
123␣456 | Introduce el resultado esperado: ␣␣␣␣␣␣␣

{% include quiz.html %}

{% include nav.html %}
