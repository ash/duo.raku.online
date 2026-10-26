---
title: 'Решение: Изменяемая метка'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. Трейт `is rw` меняет аксессор. Теперь он возвращает контейнер, в который можно записывать. Поэтому аксессор может стоять слева от присваивания.

1. В контейнер можно записывать. Поэтому с ним работает и оператор `~=`. Этот оператор соединяет строки и присваивает результат за один шаг. `$l.text ~= ' (revised)'` читает текущий текст. Он добавляет новую часть в конец. Потом он сохраняет результат обратно. Всё это идёт через один и тот же аксессор.

{% include nav.html %}
