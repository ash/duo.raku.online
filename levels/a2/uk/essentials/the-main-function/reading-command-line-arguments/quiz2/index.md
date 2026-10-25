---
title: Тест — Значення за замовчуванням
---

{% include menu.html %}

Подивіться на цю програму.

```raku
sub MAIN($a = 'abc', $b = 'def') {
    say $a;
    say $b;
}
```

## 1

Ви запускаєте програму ось так. Що вона виводить?

```console
$ raku t.raku
```

{:.quiz-code .nocode}
abc def | Введіть значення виводу: ␣␣␣ і ␣␣␣

## 2

Тепер ви запускаєте ту саму програму ось так:

```console
$ raku t.raku xyz
```

{:.quiz-code .nocode}
xyz def | Введіть значення виводу: ␣␣␣ і ␣␣␣

## 3

Нарешті, ця команда:

```console
$ raku t.raku xyz 123
```

{:.quiz-code .nocode}
xyz 123 | Введіть значення виводу: ␣␣␣ і ␣␣␣

{% include quiz.html %}

{% include nav.html %}
