---
title: 'Розв''язання: Змінювана позначка'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
class Label {
    has $.text is rw;
}

my $l = Label.new(text => 'draft');
$l.text ~= ' (revised)';
say $l.text;
```

🦋 Вихідний код можна знайти у файлі [changeable-label.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/attributes/changeable-label.raku).

## Вивід

```
draft (revised)
```

## Коментарі

1. Трейт `is rw` змінює аксесор. Тепер він повертає контейнер, у який можна записувати. Тож аксесор може стояти ліворуч від присвоєння.

1. У контейнер можна записувати. Тож оператор `~=` теж працює з ним. Цей оператор з'єднує рядки й присвоює за один крок. `$l.text ~= ' (revised)'` читає поточний текст. Він додає нову частину в кінець. Потім він зберігає результат назад. Усе це йде через той самий аксесор.

{% include nav.html %}
