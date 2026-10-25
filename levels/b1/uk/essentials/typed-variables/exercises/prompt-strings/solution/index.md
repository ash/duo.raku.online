---
title: 'Solution: Дослідження результату `prompt` — Рядки'
---

{% include menu.html %}

## Код

Ось повна програма. Вона виконує завдання і виводить як введений рядок, так і його тип.

```raku
my $name = prompt 'What is your name? ';
say $name;
say $name.WHAT;
```

🦋 Ви можете знайти вихідний код у файлі [prompt-strings.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/prompt-strings.raku).

## Тестові запуски

Запустіть програму кілька разів з різними іменами. Програма повторює введене. Вона також повідомляє, що змінна містить рядок. Іншими словами, це об'єкт типу `Str`.

```console
$ raku exercises/data-types/prompt-strings.raku
What is your name? Andrey
Andrey
(Str)
```

Тепер запустіть програму знову. Введіть кілька пробілів замість імені і натисніть Enter.

```console
$ raku exercises/data-types/prompt-strings.raku
What is your name?    

(Str)
```

Ми не бачимо виводу. Але ми бачимо, що змінна все ще має тип `Str`.

{% include nav.html %}
