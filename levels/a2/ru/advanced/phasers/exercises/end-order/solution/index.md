---
title: 'Решение: Порядок END'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
END say 'first END';
END say 'second END';

say 'body';
```

🦋 Найдите программу в файле [end-order.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/phasers/end-order.raku).

## Вывод

```
body
second END
first END
```

## Комментарии

1. Оба фейзера `END` выполняются после основного кода. Поэтому программа выводит `body` первым.

1. Несколько фейзеров `END` выполняются в порядке «последним пришёл — первым ушёл». `second END` стоит в коде позже. Но он выполняется раньше, чем `first END`. Так же бывает с очисткой в настоящих программах. Обычно сначала нужно отменить самую новую настройку.

{% include nav.html %}
