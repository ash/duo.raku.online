---
title: 'Решение: Коробка с размером'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. Роль даёт метод `describe`. Класс включает роль через `does Sized`. Это значит, что он берёт роль в себя. Методу нужен `self.size`. Класс `Box` даёт `size`. Роль и класс подходят друг к другу. Вместе они дают целый объект.

1. `Box` выполняет роль. Поэтому умное сопоставление `$b ~~ Sized` даёт `True`. У объекта есть каждая роль, которую включает его класс. Raku это знает. Это полезно. Вы можете проверить, что умеет объект. Делайте это перед тем, как вызвать метод роли.

{% include nav.html %}
