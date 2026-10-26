---
title: 'Решение: Изменяемая метка'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

## Код

```raku
class Label {
    has $.text is rw;
}

my $l = Label.new(text => 'draft');
$l.text ~= ' (revised)';
say $l.text;
```

🦋 Исходный код можно найти в файле [changeable-label.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/attributes/changeable-label.raku).

## Вывод

```
draft (revised)
```

## Комментарии

1. Трейт `is rw` заставляет аксессор возвращать изменяемый контейнер. Поэтому аксессор может стоять в левой части присваивания.

1. Раз контейнер изменяемый, с ним работает и составной оператор `~=`. `$l.text ~= ' (revised)'` читает текущий текст, добавляет новое окончание и записывает результат обратно. Всё это происходит через один и тот же аксессор.

{% include nav.html %}
