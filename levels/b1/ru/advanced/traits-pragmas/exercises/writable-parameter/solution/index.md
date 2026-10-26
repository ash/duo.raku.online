---
title: 'Решение: Изменяемый параметр'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

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

1. `is rw` привязывает параметр `$n` к переменной вызывающей стороны `$score`. Поэтому `$n *= 2` внутри `double` меняет сам `$score`, и вот почему программа выводит `42`.

1. Без `is rw` параметр был бы доступен только для чтения, и `$n *= 2` вызвало бы ошибку. С `is copy` подпрограмма `double` получила бы личную копию, которую можно менять. Тогда `$score` остался бы нетронутым и равным `21`.

{% include nav.html %}
