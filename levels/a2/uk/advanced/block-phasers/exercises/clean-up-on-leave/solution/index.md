---
title: 'Solution: Прибирання при виході'
translations_gpt: true
---

{% include menu.html %}

Ось один спосіб розв'язати завдання.

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

🦋 Вихідний код можна знайти у файлі [clean-up-on-leave.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/block-phasers/clean-up-on-leave.raku).

## Вивід

```
Working
Cleanup
```

## Коментарі

1. Спочатку програма друкує `Working`. Потім `return` одразу виходить з підпрограми. Тож програма ніколи не друкує `never reached`.

1. Тіло закінчується раніше. Але фазер `LEAVE` все одно запускається на виході. Він друкує `Cleanup`. На це завжди можна покластися. Тому `LEAVE` — правильне місце, щоб звільняти ресурси. Він запускається завжди, хоч би як закінчувався блок.

{% include nav.html %}
