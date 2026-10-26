---
title: 'Решение: Классификация размера'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

## Код

```raku
multi sub size(Int $n where $n.abs < 10)  { 'small' }
multi sub size(Int $n where $n.abs < 100) { 'medium' }
multi sub size(Int $n)                    { 'large' }

say size(7);
say size(30);
say size(-250);
```

🦋 Исходный код можно найти в файле [classify-sign.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/multiple-dispatch/classify-sign.raku).

## Вывод

```
small
medium
large
```

## Комментарии

1. Все три кандидата принимают один `Int`, поэтому без конструкций `where` они бы конфликтовали. Условия в первых двух делают их разными. Третий перехватывает всё остальное.

1. Конструкции `where` проверяют `$n.abs`. Поэтому результат зависит только от величины числа, а знак не учитывается. `size(7)` подходит к первому кандидату (`small`). В `size(-250)` абсолютное значение равно `250`. Оно не проходит ни одно из условий и попадает к кандидату-перехватчику (`large`).

1. Кандидаты проверяются от самого конкретного к самому общему. Здесь это как раз тот порядок, в котором они записаны.

{% include nav.html %}
