---
title: 'Solution: Класифицирайте размера'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

## Код

```raku
multi sub size(Int $n where $n.abs < 10)  { 'small' }
multi sub size(Int $n where $n.abs < 100) { 'medium' }
multi sub size(Int $n)                    { 'large' }

say size(7);
say size(30);
say size(-250);
```

🦋 Можете да намерите изходния код във файла [classify-sign.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/multiple-dispatch/classify-sign.raku).

## Изход

```
small
medium
large
```

## Коментари

1. И трите кандидата приемат един `Int`. Без клаузите `where` те се сблъскват. Raku не може да избере между тях. Условията на първите два ги правят различни. Третият кандидат приема всички други числа.

1. Клаузите `where` проверяват `$n.abs`. Затова има значение само големината на числото, а не знакът му. `size(7)` съвпада с първия кандидат и дава `small`. В `size(-250)` абсолютната стойност е `250`. Тя не отговаря на нито едно от условията. Затова отива при последния кандидат, който приема всичко останало. Резултатът е `large`.

1. Raku проверява кандидатите от най-специфичния към най-общия. Тук това е точно редът им в кода.

{% include nav.html %}
