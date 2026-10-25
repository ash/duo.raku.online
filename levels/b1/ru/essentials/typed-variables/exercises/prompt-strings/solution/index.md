---
title: 'Решение: Посмотрите результаты `prompt` — Строки'
---

{% include menu.html %}

## Код

Вот полная программа. Она выполняет задачу и выводит как введённую строку, так и её тип.

```raku
my $name = prompt 'What is your name? ';
say $name;
say $name.WHAT;
```

🦋 Исходный код можно найти в файле [prompt-strings.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/prompt-strings.raku).

## Тестовые запуски

Запустите программу пару раз с разными именами. Программа повторяет введённые данные. Также она сообщает, что переменная содержит строку. Другими словами, это объект типа `Str`.

```console
$ raku exercises/data-types/prompt-strings.raku
What is your name? Andrey
Andrey
(Str)
```

Теперь снова запустите программу. Введите несколько пробелов вместо имени и нажмите Enter.

```console
$ raku exercises/data-types/prompt-strings.raku
What is your name?    

(Str)
```

Мы не видим вывода. Но мы видим, что у переменной по-прежнему тип `Str`.

{% include nav.html %}
