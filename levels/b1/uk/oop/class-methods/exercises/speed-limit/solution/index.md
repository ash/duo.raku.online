---
title: 'Розв''язання: Формула на класі'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

1. Метод не використовує жодного атрибута, лише свій параметр `$r`. Тож ви можете викликати його для самого класу, не створюючи спершу об'єкта.

1. `Geometry.circle-area(10)` викликає метод для об'єкта типу й передає йому `10`. Результат — `π * 10 * 10`, а після заокруглення це `314`.

{% include nav.html %}
