---
title: Тест — Стойности по подразбиране
---

{% include menu.html %}

Вижте тази програма.

```raku
sub MAIN($a = 'abc', $b = 'def') {
    say $a;
    say $b;
}
```

## 1

Стартирате програмата така. Какво отпечатва тя?

```console
$ raku t.raku
```

{:.quiz-code .nocode}
abc def | Въведете изходните стойности: ␣␣␣ и ␣␣␣

## 2

Сега стартирате същата програма така:

```console
$ raku t.raku xyz
```

{:.quiz-code .nocode}
xyz def | Въведете изходните стойности: ␣␣␣ и ␣␣␣

## 3

Накрая, тази команда:

```console
$ raku t.raku xyz 123
```

{:.quiz-code .nocode}
xyz 123 | Въведете изходните стойности: ␣␣␣ и ␣␣␣

{% include quiz.html %}

{% include nav.html %}
