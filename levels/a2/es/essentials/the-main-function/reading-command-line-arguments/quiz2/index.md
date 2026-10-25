---
title: Quiz — Valores predeterminados
---

{% include menu.html %}

Mira este programa.

```raku
sub MAIN($a = 'abc', $b = 'def') {
    say $a;
    say $b;
}
```

## 1

Ejecutas el programa así. ¿Qué imprime?

```console
$ raku t.raku
```

{:.quiz-code .nocode}
abc def | Introduce los valores de salida: ␣␣␣ y ␣␣␣

## 2

Ahora ejecutas el mismo programa así:

```console
$ raku t.raku xyz
```

{:.quiz-code .nocode}
xyz def | Introduce los valores de salida: ␣␣␣ y ␣␣␣

## 3

Finalmente, este comando:

```console
$ raku t.raku xyz 123
```

{:.quiz-code .nocode}
xyz 123 | Introduce los valores de salida: ␣␣␣ y ␣␣␣

{% include quiz.html %}

{% include nav.html %}
