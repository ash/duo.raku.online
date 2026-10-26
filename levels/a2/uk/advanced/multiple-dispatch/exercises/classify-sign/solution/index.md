---
title: 'Розв''язання: Класифікуйте величину'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

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

1. Усі три кандидати приймають один `Int`. Без речень `where` вони конфліктують. Raku не може вибрати між ними. Умови на перших двох роблять їх різними. Третій кандидат бере всі інші числа.

1. Речення `where` перевіряють `$n.abs`. Тож важить лише величина числа, а не його знак. `size(7)` підходить до першого кандидата й дає `small`. У `size(-250)` абсолютне значення — `250`. Воно не проходить жодної з умов. Тож воно йде до останнього кандидата, який бере все інше. Результат — `large`.

1. Raku перевіряє кандидатів від найконкретнішого до найзагальнішого. Тут це саме їхній порядок у коді.

{% include nav.html %}
