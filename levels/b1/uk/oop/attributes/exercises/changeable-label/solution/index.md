---
title: 'Розв''язання: Змінювана позначка'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

1. Трейт `is rw` змушує аксесор повертати контейнер, у який можна записувати. Тож аксесор може стояти з лівого боку присвоєння.

1. Оскільки в контейнер можна записувати, складений оператор `~=` теж із ним працює. `$l.text ~= ' (revised)'` читає поточний текст, додає нове закінчення й зберігає результат назад. Усе це відбувається через той самий аксесор.

{% include nav.html %}
