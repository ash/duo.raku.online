---
title: Вправа «Повідомити й відновитися»
translations_gpt:
---

{% include menu.html %}

## Завдання

Покажіть, як програма може відновитися за допомогою `CATCH`. Вона працює далі з розумним типовим значенням.

Перед блоком оголосіть змінну `$timeout` із типовим значенням `30`. Усередині блоку зробіть `die 'config missing'`. Потім у рядку, який ніколи не виконується, спробуйте встановити `$timeout` у `60`. Скористайтеся фазером `CATCH`, чий блок `default` виводить `warning: <message>; keeping default`. Після блоку виведіть `timeout is <timeout> seconds`.

## Приклад

Програма виводить:

```
warning: config missing; keeping default
timeout is 30 seconds
```

## Рішення

✅ [Дивіться рішення](solution)

{% include nav.html %}
