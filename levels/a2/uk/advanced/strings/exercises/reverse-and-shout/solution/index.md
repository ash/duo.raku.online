---
title: 'Розв''язання: Оберни й вигукни'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
say 'raku'.flip.uc;
```

🦋 Вихідний код можна знайти у файлі [reverse-and-shout.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/strings/reverse-and-shout.raku).

## Вивід

```
UKAR
```

## Коментарі

1. Методи працюють зліва направо. Спершу `flip` перетворює `'raku'` на `'ukar'`. Потім `uc` перетворює це на `'UKAR'`.

1. Кожен метод повертає новий рядок. Тому їх можна поставити ланцюжком в одному виразі.

{% include nav.html %}
