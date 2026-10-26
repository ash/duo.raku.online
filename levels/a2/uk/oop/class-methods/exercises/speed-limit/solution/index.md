---
title: 'Розв''язання: Формула на класі'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
class Geometry {
    method circle-area($r) {
        (π * $r * $r).round
    }
}

say Geometry.circle-area(10);
```

🦋 Вихідний код можна знайти у файлі [speed-limit.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/class-methods/speed-limit.raku).

## Вивід

```
314
```

## Коментарі

1. Метод не використовує жодного атрибута. Він працює лише зі своїм параметром `$r`. Тож ви можете викликати його для самого класу. Вам не треба спершу створювати об'єкт.

1. `Geometry.circle-area(10)` викликає метод для об'єкта типу. Він передає методу `10`. Результат — `π * 10 * 10`. Після заокруглення це `314`.

{% include nav.html %}
