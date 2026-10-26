---
title: 'Решение: Променяем етикет'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
class Label {
    has $.text is rw;
}

my $l = Label.new(text => 'draft');
$l.text ~= ' (revised)';
say $l.text;
```

🦋 Намерете програмата във файла [changeable-label.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/attributes/changeable-label.raku).

## Изход

```
draft (revised)
```

## Коментари

1. Трейтът `is rw` кара аксесора да връща записваем контейнер. Затова аксесорът може да стои от лявата страна на присвояване.

1. Понеже контейнерът е записваем, съставният оператор `~=` също работи с него. `$l.text ~= ' (revised)'` чете текущия текст, добавя новия край и записва резултата обратно. Всичко това става през същия аксесор.

{% include nav.html %}
