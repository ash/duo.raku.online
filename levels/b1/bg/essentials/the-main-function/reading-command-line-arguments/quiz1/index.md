---
title: Тест — Четене на аргументите на командния ред
---

{% include menu.html %}

Ето програмата:

```raku
sub MAIN($a) {
    say $a;
}
```

## 1

Какво отпечатва програмата, ако я стартирате така?

```console
$ raku t.raku 123
```

{:.quiz-code .nocode}
123 | Въведете очаквания изход: ␣␣␣␣␣␣␣

## 2

Какво ще отпечата сега?

```console
$ raku t.raku "123 456"
```

{:.quiz-code .nocode}
123␣456 | Въведете очаквания изход: ␣␣␣␣␣␣␣

{% include quiz.html %}

{% include nav.html %}
