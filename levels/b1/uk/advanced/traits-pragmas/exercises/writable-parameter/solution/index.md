---
title: 'Розв''язання: Параметр, доступний для запису'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

1. `is rw` зв'язує параметр `$n` зі змінною викликача `$score`. Тож `$n *= 2` усередині `double` змінює саму `$score`, і саме тому програма виводить `42`.

1. Без `is rw` параметр був би доступний лише для читання, і `$n *= 2` спричинив би помилку. А з `is copy` підпрограма `double` отримала б приватну копію, яку можна змінювати. Тоді `$score` лишилася б недоторканою зі значенням `21`.

{% include nav.html %}
