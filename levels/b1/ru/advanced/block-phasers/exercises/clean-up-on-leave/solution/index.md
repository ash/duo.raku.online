---
title: 'Решение: Очистка при выходе'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

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

1. После того как напечатано `Working`, `return` сразу выходит из подпрограммы. Поэтому `never reached` никогда не печатается.

1. Программа вышла из тела раньше времени. И всё же фазер `LEAVE` выполняется на выходе и печатает `Cleanup`. На это всегда можно положиться. Именно поэтому `LEAVE` — правильное место для освобождения ресурсов. Он выполняется, как бы ни закончился блок.

{% include nav.html %}
