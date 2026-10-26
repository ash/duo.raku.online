---
title: 'Розв''язання: Класифікуйте величину'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

## Код

```raku
multi sub size(Int $n where $n.abs < 10)  { 'small' }
multi sub size(Int $n where $n.abs < 100) { 'medium' }
multi sub size(Int $n)                    { 'large' }

say size(7);
say size(30);
say size(-250);
```

🦋 Вихідний код можна знайти у файлі [classify-sign.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/multiple-dispatch/classify-sign.raku).

## Вивід

```
small
medium
large
```

## Коментарі

1. Усі три кандидати приймають один `Int`, тож без речень `where` вони б конфліктували. Умови на перших двох роблять їх різними. Третій ловить усе інше.

1. Речення `where` перевіряють `$n.abs`. Тож результат визначає лише величина числа, а знак ігнорується. `size(7)` підходить до першого кандидата (`small`). У `size(-250)` абсолютне значення — `250`. Воно не проходить жодної з умов і йде далі, до всеохопного кандидата (`large`).

1. Кандидатів перевіряють від найконкретнішого до найзагальнішого. Тут це саме той порядок, у якому їх записано.

{% include nav.html %}
