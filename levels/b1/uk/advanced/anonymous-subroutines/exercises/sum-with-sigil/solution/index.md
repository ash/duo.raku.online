---
title: 'Solution: Сума з сигілом `&`'
translations_gpt: Розв'язок задачі «Сума з сигілом `&`»
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

1. Стрілочний блок має два параметри, `-> $a, $b`. Тому анонімній підпрограмі потрібні два аргументи.

1. Змінна оголошена із сигілом `&`. Тож її можна викликати як `add(2, 3)`, точно так само, як іменовану підпрограму. У виклику сигіл не потрібен. Це дає `5`.

{% include nav.html %}
