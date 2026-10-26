---
title: 'Розв''язання: Номери днів тижня'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

## Код

```raku
enum Day (Mon => 1, Tue => 2, Wed => 3, Thu => 4, Fri => 5);

say Day(5);
say Day(1);
```

🦋 Вихідний код можна знайти у файлі [weekday-values.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/enumerations/weekday-values.raku).

## Вивід

```
Fri
Mon
```

## Коментарі

1. Якщо записати константи як пари, можна обрати числа. Тут вони починаються з `1`.

1. Якщо викликати тип перелічення як `Day(5)`, він виконує зворотний пошук. Він знаходить константу зі значенням `5`, тобто `Fri`. Так само `Day(1)` дає `Mon`. Це протилежне до `Fri.value`, який іде від імені до числа.

{% include nav.html %}
