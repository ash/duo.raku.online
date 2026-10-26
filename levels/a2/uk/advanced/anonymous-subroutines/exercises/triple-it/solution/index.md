---
title: 'Solution: Потроїти'
translations_gpt: Розв'язок задачі «Потрій це»
---

{% include menu.html %}

Ось один спосіб розв'язати завдання.

## Код

```raku
my $factor = 3;
my $scale = -> $x { $x * $factor };

say $scale(7);
```

🦋 Ви можете знайти вихідний код у файлі [triple-it.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/anonymous-subroutines/triple-it.raku).

## Вивід

```
21
```

## Коментарі

1. Стрілочний блок має лише один параметр, `$x`. Але він також використовує `$factor`. Ця змінна приходить із коду навколо блоку. Блок, який тримає такі змінні, — це замикання.

1. `$factor` дорівнює `3`, тож `$scale(7)` дає `21`. Тепер змініть `$factor`. Тоді той самий блок бере нове значення:

```raku
$factor = 5;
say $scale(7); # 35
```

Замикання тримає саму *змінну*. Воно не тримає старе значення змінної. Тож пізніший виклик бачить новий `$factor`. Він повертає `35`.

{% include nav.html %}
