---
title: 'Решение: Поздоровайтесь с человеком'
---

{% include menu.html %}

Вот одно возможное решение этой задачи.

## Код

```raku
my $name = prompt 'What is your name? ';
say 'Hello, ', $name, '!';
```

🦋 Вы можете найти исходный код в файле [greet-a-person.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/greet-a-person.raku).

## Вывод

Запустите программу и введите имя, когда увидите вопрос:

```console
$ raku exercises/scalar-variables/greet-a-person.raku 
What is your name? Inge
Hello, Inge!
```

## Комментарии

1. В ответ на вопрос пользователь вводит строку. Программа хранит эту строку в скалярной переменной `$name`. Вы используете переменную в списке, который передаёте подпрограмме `say`. Поэтому имя появляется в сообщении.

2. Эту задачу лучше решать с помощью строковой интерполяции. Мы скоро к ней вернёмся.

{% assign human=1 %}
{% include nav.html %}
