---
title: Вправа «Повідомити й відновитися»
translations_gpt:
---

{% include menu.html %}

## Завдання

Покажіть, як `CATCH` допомагає програмі відновитися після помилки. Програма не зупиняється. Вона працює далі з безпечним типовим значенням.

Перед блоком створіть змінну `$timeout`. Дайте їй типове значення `30`. Усередині блоку зробіть `die 'config missing'`. У наступному рядку спробуйте встановити `$timeout` у `60`. Програма ніколи не доходить до цього рядка. Додайте фазер `CATCH` із блоком `default`. Він виводить `warning: <message>; keeping default`. Після блоку виведіть `timeout is <timeout> seconds`.

## Приклад

Програма виводить:

```
warning: config missing; keeping default
timeout is 30 seconds
```

## Рішення

✅ [Дивіться рішення](solution)

{% include nav.html %}
