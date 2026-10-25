---
title: Quiz — Legere linea mandati argumenta
---

{% include menu.html %}

Here is the program:

```raku
sub MAIN($a) {
    say $a;
}
```

## 1

Quid programma imprimit, si id sic curris?

```console
$ raku t.raku 123
```

{:.quiz-code .nocode}
123 | Enter the expected output: ␣␣␣␣␣␣␣

## 2

What does it print now?

```console
$ raku t.raku "123 456"
```

{:.quiz-code .nocode}
123␣456 | Enter the expected output: ␣␣␣␣␣␣␣

{% include quiz.html %}

{% include nav.html %}
