---
title: 'Решение: Поздоровайтесь с человеком'
---

{% include menu.html %}

Вот один способ решить эту задачу.

## Код

```raku
my $name = prompt 'What is your name? ';
say 'Hello, ', $name, '!';
```

🦋 Вы можете найти исходный код в файле [greet-a-person.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/greet-a-person.raku).

## Вывод

Запустите программу. Она спрашивает ваше имя. Введите имя:

```console
$ raku exercises/scalar-variables/greet-a-person.raku 
What is your name? Inge
Hello, Inge!
```

## Комментарии

1. Программа спрашивает имя. Пользователь вводит строку. Скалярная переменная `$name` хранит эту строку. Потом программа передаёт список значений в `say`. Переменная — часть этого списка. Поэтому имя появляется в сообщении.

2. Есть способ решить эту задачу лучше. Он использует строковую интерполяцию. Мы скоро вернёмся к этой задаче.

{% assign human=1 %}
{% include nav.html %}
