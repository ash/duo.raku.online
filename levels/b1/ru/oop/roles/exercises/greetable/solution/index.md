---
title: 'Решение: Коробка с размером'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

## Код

```raku
role Sized {
    method describe {
        'size is ' ~ self.size;
    }
}

class Box does Sized {
    has $.size;
}

my $b = Box.new(size => 10);
say $b.describe;
say $b ~~ Sized;
```

🦋 Исходный код можно найти в файле [greetable.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/roles/greetable.raku).

## Вывод

```
size is 10
True
```

## Комментарии

1. Роль даёт метод `describe`, а класс включает её через `does Sized`. Методу нужен `self.size`, который даёт класс `Box`. Так роль и класс складываются в целый объект.

1. `Box` выполняет роль, поэтому умное сопоставление `$b ~~ Sized` даёт `True`. Считается, что у объекта есть каждая роль, которую включает его класс. Так можно проверить, что умеет объект, прежде чем вызывать метод роли.

{% include nav.html %}
