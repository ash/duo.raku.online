---
title: 'Solution: Сума з сигілом `&`'
translations_gpt: Розв'язок задачі «Сума з сигілом `&`»
---

{% include menu.html %}

Ось один спосіб розв'язати завдання.

## Код

```raku
my &add = -> $a, $b {
    $a + $b;
};

say add(2, 3);
```

🦋 Ви можете знайти вихідний код у файлі [sum-with-sigil.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/anonymous-subroutines/sum-with-sigil.raku).

## Вивід

```
5
```

## Коментарі

1. Стрілочний блок має два параметри: `-> $a, $b`. Тож анонімна підпрограма приймає два аргументи.

1. Змінна має сигіл `&`. Тож ви можете викликати її як `add(2, 3)`. Це працює як звичайна підпрограма з іменем. У виклику ви не пишете сигіл. Результат — `5`.

{% include nav.html %}
