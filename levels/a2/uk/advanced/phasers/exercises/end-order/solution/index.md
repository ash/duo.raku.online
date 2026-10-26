---
title: 'Розв''язання: Порядок блоків END'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
END say 'first END';
END say 'second END';

say 'body';
```

🦋 Вихідний код можна знайти у файлі [end-order.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/phasers/end-order.raku).

## Вивід

```
body
second END
first END
```

## Коментарі

1. Обидва фазери `END` виконуються після основного коду. Тож програма спершу виводить `body`.

1. Кілька фазерів `END` виконуються за принципом «останнім прийшов — першим вийшов». `second END` стоїть далі в коді. Але він виконується перед `first END`. Це схоже на прибирання в справжніх програмах. Зазвичай спершу треба скасувати найновіше налаштування.

{% include nav.html %}
