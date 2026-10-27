---
title: 'Розв''язання: Коробка з розміром'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

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

🦋 Вихідний код можна знайти у файлі [greetable.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/roles/greetable.raku).

## Вивід

```
size is 10
True
```

## Коментарі

1. Роль дає метод `describe`. Клас компонує роль через `does Sized`. Це означає, що клас бере роль у себе. Методу потрібен `self.size`. Клас `Box` дає `size`. Роль і клас підходять одне одному. Разом вони утворюють повний об'єкт.

1. `Box` виконує роль. Тож розумне зіставлення `$b ~~ Sized` дає `True`. Об'єкт має кожну роль, яку компонує його клас. Raku це знає. Це корисно. Можна перевірити, що вміє об'єкт. Зробіть це перед тим, як викликати метод ролі.

{% include nav.html %}
