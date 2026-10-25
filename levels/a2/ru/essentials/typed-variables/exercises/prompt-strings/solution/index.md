---
title: 'Решение: Посмотрите результаты `prompt` — Строки'
---

{% include menu.html %}

## Код

Вот полная программа. Она делает то, что нужно. Она выводит строку, которую вы вводите, и её тип.

```raku
my $name = prompt 'What is your name? ';
say $name;
say $name.WHAT;
```

🦋 Исходный код можно найти в файле [prompt-strings.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/prompt-strings.raku).

## Тестовые запуски

Запустите программу два или три раза. Вводите разные имена. Программа снова выводит то, что вы ввели. Ещё она сообщает, что переменная содержит строку. Другими словами, это объект типа `Str`.

```console
$ raku exercises/data-types/prompt-strings.raku
What is your name? Andrey
Andrey
(Str)
```

Теперь снова запустите программу. Введите несколько пробелов вместо имени. Потом нажмите Enter.

```console
$ raku exercises/data-types/prompt-strings.raku
What is your name?    

(Str)
```

Мы не видим вывода. Но мы видим тип переменной. Это всё ещё `Str`.

{% include nav.html %}
