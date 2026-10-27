---
title: Сообщите и восстановитесь
translations_gpt:
---

{% include menu.html %}

## Задача

Покажите, как программа может восстановиться с помощью `CATCH`. Она продолжает работу с разумным значением по умолчанию.

Перед блоком объявите переменную `$timeout` со значением по умолчанию `30`. Внутри блока выполните `die 'config missing'`. Затем на строке, которая никогда не выполняется, попробуйте присвоить `$timeout` значение `60`. Возьмите фазер `CATCH`, у которого блок `default` печатает `warning: <сообщение>; keeping default`. После блока напечатайте `timeout is <timeout> seconds`.

## Пример

Программа печатает:

```
warning: config missing; keeping default
timeout is 30 seconds
```

## Решение

✅ [Посмотреть решение](solution)

{% include nav.html %}
