---
title: 'Розв''язання: Параметр, доступний для запису'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
sub double($n is rw) {
    $n *= 2;
}

my $score = 21;
double($score);
say $score;
```

🦋 Вихідний код можна знайти у файлі [writable-parameter.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/traits-pragmas/writable-parameter.raku).

## Вивід

```
42
```

## Коментарі

1. `is rw` зв'язує параметр `$n` зі змінною викликача `$score`. Тож `$n *= 2` усередині `double` змінює саму `$score`. Тому програма виводить `42`.

1. Без `is rw` параметр доступний лише для читання. Тоді `$n *= 2` дає помилку. З `is copy` підпрограма `double` отримує власну копію значення. Вона може змінювати цю копію. Але `$score` лишається `21`.

{% include nav.html %}
