---
title: 'Solution: Прибирання при виході'
translations_gpt: true
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

1. Після того як `Working` надруковано, `return` одразу виходить з підпрограми. Тож `never reached` ніколи не друкується.

1. Тіло залишили раніше. Проте фазер `LEAVE` все одно запускається на виході й друкує `Cleanup`. На це завжди можна розраховувати. Саме тому `LEAVE` — правильне місце, щоб звільняти ресурси. Він запускається незалежно від того, як закінчується блок.

{% include nav.html %}
