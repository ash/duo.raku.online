---
title: 'Розв''язання: Порядок блоків END'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

1. Обидва фазери `END` виконуються після основного коду, тож програма виводить `body` першим.

1. Кілька фазерів `END` виконуються за принципом «останнім прийшов — першим вийшов». `second END` оголошено пізніше, тому він виконується перед `first END`. Це схоже на прибирання, яке зазвичай мусить спершу скасувати найновіше налаштування.

{% include nav.html %}
