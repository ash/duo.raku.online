---
title: 'Розв''язання: Сплощіть частини'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
my @first = 1, 2;
my @second = 3, 4, 5;

my @all = flat(@first, @second);
say @all;
say @all.elems;
```

🦋 Вихідний код можна знайти у файлі [flatten-the-parts.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/ordered-containers/flatten-the-parts.raku).

## Вивід

```
[1 2 3 4 5]
5
```

## Коментарі

1. Код `my @all = @first, @second` _не_ дає плоского масиву. Він створює вкладений масив із двох масивів: `[[1 2] [3 4 5]]`.

1. Підпрограма `flat` збирає разом елементи обох масивів. Вона створює одну плоску послідовність. Програма зберігає цю послідовність у `@all`. Результат має п'ять елементів.

{% include nav.html %}
