---
title: 'Розв''язання: Коробка з розміром'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

1. Роль надає метод `describe`, а клас компонує її через `does Sized`. Методу потрібен `self.size`, який постачає клас `Box`. Тож роль і клас складаються докупи й утворюють повний об'єкт.

1. `Box` виконує роль, тож розумне зіставлення `$b ~~ Sized` дає `True`. Вважається, що об'єкт має кожну роль, яку компонує його клас. Це допомагає перевірити, що вміє об'єкт, перш ніж викликати метод ролі.

{% include nav.html %}
