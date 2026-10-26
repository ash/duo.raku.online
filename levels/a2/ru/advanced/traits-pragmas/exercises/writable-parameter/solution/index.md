---
title: 'Решение: Изменяемый параметр'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
sub double($n is rw) {
    $n *= 2;
}

my $score = 21;
double($score);
say $score;
```

🦋 Исходный код можно найти в файле [writable-parameter.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/traits-pragmas/writable-parameter.raku).

## Вывод

```
42
```

## Комментарии

1. `is rw` связывает параметр `$n` с переменной `$score` вызывающей стороны. Поэтому `$n *= 2` внутри `double` меняет сам `$score`. Вот почему программа выводит `42`.

1. Без `is rw` параметр доступен только для чтения. Тогда `$n *= 2` даёт ошибку. С `is copy` подпрограмма `double` получает свою копию значения. Она может менять эту копию. Но `$score` остаётся равным `21`.

{% include nav.html %}
