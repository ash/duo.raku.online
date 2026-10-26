---
title: 'Решение: Променяем етикет'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. Трейтът `is rw` променя аксесора. Сега той връща контейнер, в който можете да записвате. Затова аксесорът може да стои отляво на присвояване.

1. Можете да записвате в контейнера. Затова операторът `~=` също работи с него. Този оператор съединява низове и присвоява с една стъпка. `$l.text ~= ' (revised)'` чете текущия текст. Той добавя новата част в края. После записва резултата обратно. Всичко това минава през същия аксесор.

{% include nav.html %}
