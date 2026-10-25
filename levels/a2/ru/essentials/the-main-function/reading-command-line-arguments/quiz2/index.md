---
title: Тест: Значения по умолчанию
---

{% include menu.html %}

Посмотрите на эту программу.

```raku
sub MAIN($a = 'abc', $b = 'def') {
    say $a;
    say $b;
}
```

## 1

Вы запускаете программу так. Что она выводит?

```console
$ raku t.raku
```

{:.quiz-code .nocode}
abc def | Enter the output values: ␣␣␣ and ␣␣␣

## 2

Теперь вы запускаете ту же программу так:

```console
$ raku t.raku xyz
```

{:.quiz-code .nocode}
xyz def | Enter the output values: ␣␣␣ and ␣␣␣

## 3

Finally, this command:

```console
$ raku t.raku xyz 123
```

{:.quiz-code .nocode}
xyz 123 | Enter the output values: ␣␣␣ and ␣␣␣

{% include quiz.html %}

{% include nav.html %}
