---
title: 'Решение: Очистка при выходе'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
sub work {
    LEAVE say 'Cleanup';

    say 'Working';
    return;
    say 'never reached';
}

work();
```

🦋 Исходный код можно найти в файле [clean-up-on-leave.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/block-phasers/clean-up-on-leave.raku).

## Вывод

```
Working
Cleanup
```

## Комментарии

1. Сначала программа печатает `Working`. Потом `return` сразу выходит из подпрограммы. Поэтому программа никогда не печатает `never reached`.

1. Тело заканчивается раньше времени. Но фазер `LEAVE` всё равно выполняется на выходе. Он печатает `Cleanup`. В этом можно быть уверенным всегда. Поэтому `LEAVE` — правильное место, чтобы освобождать ресурсы. Он выполняется всегда, как бы ни закончился блок.

{% include nav.html %}
